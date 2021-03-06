{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE QuasiQuotes           #-}
{-# LANGUAGE Strict                #-}
module Write
  ( generateVkSource
  ) where

import           Control.Arrow                        (first)
import           Control.Monad
import           Data.Char
import qualified Data.List                            as L
import qualified Data.Map                             as Map
import           Data.Semigroup
import           Data.Text                            (Text)
import qualified Data.Text                            as T
import           Language.Haskell.Exts.ExactPrint
import           Language.Haskell.Exts.Pretty
import           Language.Haskell.Exts.SimpleComments
import           Language.Haskell.Exts.Syntax
import           Language.Haskell.Format
import           Path
import           Path.IO
import           System.IO                            (writeFile)
import           Text.RE.TDFA.String

import           VkXml.CommonTypes
import           VkXml.Sections
import           VkXml.Sections.Extensions
import           VkXml.Sections.Feature
import           Write.Cabal
import           Write.Extension
import           Write.Feature
import           Write.ModuleWriter
import           Write.Types
import           Write.Types.Enum
import           Write.Util.DeclaredNames


generateVkSource :: Path b Dir
                 -> Path c File
                 -> VkXml
                 -> IO ()
generateVkSource outputDir outCabalFile vkXml = do


  removeDirRecur outputDir
  createDirIfMissing True (outputDir </> [reldir|Graphics|])
  createDirIfMissing True (outputDir </> [reldir|Graphics/Vulkan|])
  createDirIfMissing True (outputDir </> [reldir|Graphics/Vulkan/Ext|])

  (_, dnames) <- writeAllTypes vkXml baseDeclaredNames

  exportedNamesConstants <- do
    ((), mr) <- runModuleWriter vkXml "Graphics.Vulkan.Constants" dnames $ do
       writePragma "Strict"
       writePragma "DataKinds"
       genApiConstants
    _ <- writeModule outputDir mr
    pure $ globalNames mr

  -- We run writeAllTypes function twice to make sure all cross-module
  --  dependencies are resolved
  (genTModules, exportedNamesTypes) <- writeAllTypes vkXml exportedNamesConstants
  eModules0 <- mapM
    (\(m, mpdf) -> flip (,) mpdf <$> writeModule outputDir m) genTModules


  (exportedNamesCore, fModules, featureVersions)
    <- fmap mconcat . forM (globFeature vkXml) $ \feature -> do
      let eName = T.unpack $ "Core_" <>  T.map (\c -> if isDigit c
                                                      then c
                                                      else '_'
                                               ) (number feature)
          modName = "Graphics.Vulkan." <> eName
      (featureVer, mr) <- runModuleWriter vkXml modName exportedNamesTypes $ do
         writePragma "Strict"
         writePragma "DataKinds"
         genFeature feature
      _ <- writeModule outputDir mr
      pure (globalNames mr, [(T.pack modName, Nothing)], [featureVer])

  (_exportedNamesExts, eModules)
    <- aggregateExts exportedNamesCore
                  ( filter (\e -> extSupported (extAttributes e) /= "disabled")
                  . L.sortOn (extNumber . extAttributes)
                  . Map.elems . globExtensions $ vkXml)
                  $ \gn ext -> do
    let eName = T.unpack . unVkExtensionName . extName $ extAttributes ext
        modName = "Graphics.Vulkan.Ext." <> eName
    (exProtect, mr) <- runModuleWriter vkXml modName gn $ do
       writePragma "Strict"
       writePragma "DataKinds"
       genExtension ext
    _ <- writeModule outputDir mr
    pure (globalNames mr, (T.pack modName, exProtect))

  -- do -- write classes for struct member accessors
  --   ((), mr) <- runModuleWriter vkXml "Graphics.Vulkan.StructMembers"
  --                                          exportedNamesCommon $ do
  --      writePragma "Strict"
  --      writeFullImport "Graphics.Vulkan.Marshal"
  --      mapM_ genClassName
  --        . Map.toList
  --        $ classDeclsBase <> classDeclsCore <> classDeclsExts
  --   writeModule outputDir [relfile|Graphics/Vulkan/StructMembers.hs|] mr
  --   pure ()

  writeFile (toFilePath $ outputDir </> [relfile|Graphics/Vulkan/Ext.hs|])
      $ T.unpack $ T.unlines $
        [ "{-# LANGUAGE CPP #-}"
        , "module Graphics.Vulkan.Ext"
        , "    ("
        ]
     <> zipWith exportLine (' ' : repeat ',') eModules
     <> [ "    ) where"
        , ""
        ]
     <> map importLine eModules


  writeFile (toFilePath outCabalFile) . T.unpack $ genCabalFile featureVersions
    $ fModules <> eModules0 <> eModules



aggregateExts :: DeclaredNames
              -> [VkExtension]
              -> (DeclaredNames -> VkExtension
                   -> IO (DeclaredNames, (Text, Maybe ProtectDef))
                 )
              -> IO (DeclaredNames, [(Text, Maybe ProtectDef)])
aggregateExts gn [] _ = pure (gn, [])
aggregateExts gn (x:xs) f = do
  (gn', mp) <- f gn x
  (gn'', mps) <- aggregateExts gn' xs f
  pure (gn'', mp:mps)

importLine :: (Text, Maybe ProtectDef) -> Text
importLine (mname, Nothing) = "import " <> mname
importLine (mname, Just p)  = T.unlines
  [ "#ifdef " <> unProtectCPP (protectCPP p)
  , "import " <> mname
  , "#endif"
  ]


exportLine :: Char -> (Text, Maybe ProtectDef) -> Text
exportLine c (mname, Nothing) = "    " <> T.cons c (" module " <> mname)
exportLine c (mname, Just p)  = T.unlines
  [ "#ifdef " <> unProtectCPP (protectCPP p)
  , "    " <> T.cons c (" module " <> mname)
  , "#endif"
  ]



writeModule :: Path b Dir
             -> ModuleWriting
             -> IO Text
writeModule outputDir mw = do
    p <- parseRelFile fileNameStr
    let pp = toFilePath $ outputDir </> p
    createDirIfMissing True (parent $ outputDir </> p)
    frez <- hfmt rez
    case frez of
      Left err -> do
        putStrLn $ "Could not format the code:\n" <> err
        writeFile pp
          $ fixSourceHooks isHsc rez
      Right (ss, rez') -> do
        forM_ ss $ \(Suggestion s) ->
          putStrLn $ "Formatting suggestion:\n    " <> s
        writeFile pp
          $ fixSourceHooks isHsc rez'
    putStrLn pp
    return $ T.pack modName
  where
    isHsc = "HSC2HS___" `L.isInfixOf` rez
    modName = case mName mw of
      ModuleName () m -> m
    fileNameStr = map repSym modName <> if isHsc then ".hsc" else ".hs"
    repSym '.' = '/'
    repSym c   = c
    rez = uncurry exactPrint
        . ppWithCommentsMode defaultMode
        $ genModule mw



-- unfortunately, I have to disable hindent for now,
--  because it breaks haddock:
--   moves the first section declaration before the opening parenthesis
--   in the export list.
hfmt :: String -> IO (Either String ([Suggestion], String))
hfmt source = do
    sets <- autoSettings
    mfts <- sequence [hlint sets,  stylish sets]
     -- formatters sets   -- hindent sets,
    pure . fmap (first removeCamelCaseSuggestions)
         $ go mfts (Right ([], source))
  where
    go [] esr       = esr
    go _ (Left err) = Left err
    go (f:fs) (Right (suggs, txt)) = case format f (HaskellSource "" txt) of
        Left err -> Left err
        Right (Reformatted (HaskellSource _ txt') suggs')
          -> go fs (Right ( suggs ++ suggs', txt'))
    removeCamelCaseSuggestions [] = []
    removeCamelCaseSuggestions (Suggestion s:xs)
      | "Use camelCase" `L.isInfixOf` s = removeCamelCaseSuggestions xs
      | otherwise = Suggestion s : removeCamelCaseSuggestions xs

-- | Various small fixes to normalize haddock output, enable CPP, etc.
fixSourceHooks :: Bool -> String -> String
fixSourceHooks isHsc = (if isHsc then enableHSC else id)
                     . uncommentCPP . splitExportSections
  where
    stripBeginSpace = dropWhile isSpace

    -- improve haddock layout
    splitExportSections = unlines . go . lines
      where
        go [] = []
        go (x:y:zs) | "-- *" `L.isPrefixOf` stripBeginSpace y
                    && "--" `L.isPrefixOf` stripBeginSpace x
                    = x:"":y:go zs
        go (x:xs) = x : go xs

    -- enable CPP: I put all CPP code into comments starting with @-- ##@
    uncommentCPP = unlines . go . lines
      where
        go [] = []
        go (x:xs) | "-- ##" `L.isPrefixOf` stripBeginSpace x
                  = drop 5 (stripBeginSpace x) : go xs
                  | otherwise = x : go xs

    -- enable hsc expressions
    enableHSC
        = unlines
        . ("#include \"vulkan/vulkan.h\"":) . ("":)
        . byThree (*=~/ [ed|HSC2HS___[[:space:]]+"##([^"]+)"///#$1|]) -- hsc2hs keywords
        . map ( (*=~/ [edBS|{-##///{-#|]) -- opening pragma
              . (*=~/ [edBS|##-}///#-}|]) -- closing pragma
              . (*=~/ [edBS|html##///html#|]) -- haddock spec links
              . (*=~/ [edBS|#///##|]) -- escape all # symobls except in cases described above
              . (*=~/ [edBS|^([^']*'[^']*)$///$1 -- ' closing tick for hsc2hs|])
              )
        . lines
      where
        byThree _ [] = []
        byThree f [x] = [f x]
        byThree f [x,y] = lines . f $ unlines [x,y]
        byThree f (x:y:z:ss) = case lines . f $ unlines [x,y,z] of
          []   -> byThree f ss
          a:as ->  a : byThree f (as ++ ss)
