{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE Strict            #-}
module Write.Util.DeclaredNames
  ( DeclaredNames, baseDeclaredNames
  , DeclaredIdent (..), DIThingMembers (..)
  , diToImportSpec, diToExportSpec
  ) where


import qualified Data.Map                     as Map
import           Data.Map.Strict              (Map)
import           Data.Semigroup
import           Data.Text                    (Text)
import qualified Data.Text                    as T
import           Language.Haskell.Exts.Syntax




-- | I want to have unambiguous set of haskell identifiers globally for
--   the library. Thus, it should be possible to lookup module names
--   (for export or import) by identifiers.
type DeclaredNames = Map DeclaredIdent (ModuleName (), [ImportSpec ()])


-- | I limit number of ways to express imports and exports to
--    simplify further processing.
--   I think, this is a good compromise.
data DeclaredIdent
  = DIVar         { diName :: Text }
    -- ^ variable or function (starts with lower case)
  | DIPat         { diName :: Text }
    -- ^ pattern synonyms
  | DIThing       { diName :: Text, diWithMembers :: DIThingMembers}
    -- ^ Class or data or type (starts with upper case)
  deriving (Eq, Ord, Show)

data DIThingMembers = DITNo | DITEmpty | DITAll
  deriving (Eq, Ord, Show)


diToImportSpec :: DeclaredIdent -> ImportSpec ()
diToImportSpec (DIVar n)
  | T.length n >= 2 && T.head n == '(' && T.last n == ')'
    = IVar () (Symbol () . T.unpack . T.init $ T.tail n)
  | otherwise
    = IVar () (Ident () $ T.unpack n)
diToImportSpec (DIPat n)
  = IAbs () (PatternNamespace ()) (Ident () $ T.unpack n)
diToImportSpec (DIThing n DITNo)
  = IAbs () (NoNamespace ()) (Ident () $ T.unpack n)
diToImportSpec (DIThing n DITEmpty)
  = IThingWith () (Ident () $ T.unpack n) []
diToImportSpec (DIThing n DITAll)
  = IThingAll () (Ident () $ T.unpack n)


diToExportSpec :: DeclaredIdent -> ExportSpec ()
diToExportSpec (DIVar n)
  | T.length n >= 2 && T.head n == '(' && T.last n == ')'
    = EVar () (UnQual () . Symbol () . T.unpack . T.init $ T.tail n)
  | otherwise
    = EVar () (UnQual () $ Ident () $ T.unpack n)
diToExportSpec (DIPat n)
  = EAbs () (PatternNamespace ())
    (UnQual () $ Ident () $ T.unpack n)
diToExportSpec (DIThing n DITNo)
  = EAbs () (NoNamespace ())
    (UnQual () $ Ident () $ T.unpack n)
diToExportSpec (DIThing n DITEmpty)
  = EThingWith () (NoWildcard ())
    (UnQual () $ Ident () $ T.unpack n) []
diToExportSpec (DIThing n DITAll)
  = EThingWith () (EWildcard () 0)
    (UnQual () $ Ident () $ T.unpack n) []


baseDeclaredNames :: DeclaredNames
baseDeclaredNames
    = ida "Graphics.Vulkan.Marshal.Internal" "VulkanMarshalPrim"
   <> ida "Graphics.Vulkan.Marshal" "VulkanMarshal"
   <> id0 "Graphics.Vulkan.Marshal" "VulkanMarshalPrim"
   <> ida "Graphics.Vulkan.Marshal" "VulkanPtr"
   <> ida "Graphics.Vulkan.Marshal" "VkPtr"
   <> ipa "Graphics.Vulkan.Marshal" "VK_NULL_HANDLE"
   <> ipa "Graphics.Vulkan.Marshal" "VK_NULL"
   <> iva "Graphics.Vulkan.Marshal" "clearStorable"
   <> iva "Graphics.Vulkan.Marshal" "withPtr"
   <> ida "Graphics.Vulkan.Marshal" "HasField"
   <> ida "Graphics.Vulkan.Marshal" "CanReadField"
   <> ida "Graphics.Vulkan.Marshal" "CanWriteField"
   <> ida "Graphics.Vulkan.Marshal" "CanReadFieldArray"
   <> ida "Graphics.Vulkan.Marshal" "CanWriteFieldArray"
   <> id0 "Graphics.Vulkan.Marshal" "IndexInBounds"
   <> iva "Graphics.Vulkan.Marshal" "mallocForeignPtr"
   <> iva "Graphics.Vulkan.Marshal" "withForeignPtr"
   <> iva "Graphics.Vulkan.Marshal" "addForeignPtrFinalizer"
   <> id0 "Graphics.Vulkan.Marshal" "Int8"
   <> id0 "Graphics.Vulkan.Marshal" "Int16"
   <> id0 "Graphics.Vulkan.Marshal" "Int32"
   <> id0 "Graphics.Vulkan.Marshal" "Int64"
   <> id0 "Graphics.Vulkan.Marshal" "Word8"
   <> id0 "Graphics.Vulkan.Marshal" "Word16"
   <> id0 "Graphics.Vulkan.Marshal" "Word32"
   <> id0 "Graphics.Vulkan.Marshal" "Word64"
   <> id0 "Graphics.Vulkan.Marshal" "Ptr"
   <> id0 "Graphics.Vulkan.Marshal" "FunPtr"
   <> id0 "Graphics.Vulkan.Marshal" "Void"
   <> id0 "Graphics.Vulkan.Marshal" "CString"
   <> ida "Graphics.Vulkan.Marshal" "CInt"
   <> ida "Graphics.Vulkan.Marshal" "CSize"
   <> ida "Graphics.Vulkan.Marshal" "CChar"
   <> iva "Graphics.Vulkan.Marshal" "withCStringField"
   <> iva "Graphics.Vulkan.Marshal" "unsafeCStringField"
   <> iva "Graphics.Vulkan.Marshal" "getStringField"
   <> iva "Graphics.Vulkan.Marshal" "readStringField"
   <> iva "Graphics.Vulkan.Marshal" "writeStringField"
   <> iva "Graphics.Vulkan.Marshal" "eqCStrings"
   <> iva "Graphics.Vulkan.Marshal" "eqCStringsN"
   <> ida "Foreign.C.Types" "CULong"
   <> ida "Foreign.C.Types" "CFloat"
   <> ida "Foreign.C.Types" "CWchar"
   <> iva "Foreign.Ptr" "nullPtr"
   <> id1 "GHC.Ptr" "Ptr"
   <> id0 "GHC.Generics" "Generic"
   <> id0 "Data.Data" "Data"
   <> ida "Data.Bits" "Bits"
   <> ida "Data.Bits" "FiniteBits"
   <> ida "Foreign.Storable" "Storable"
   <> iva "Text.ParserCombinators.ReadPrec" "(+++)"
   <> iva "Text.ParserCombinators.ReadPrec" "step"
   <> iva "Text.ParserCombinators.ReadPrec" "prec"
   <> iva "Text.Read" "parens"
   <> ida "Text.Read" "Read"
   <> iva "GHC.Read" "choose"
   <> iva "GHC.Read" "expectP"
   <> ida "Text.Read.Lex" "Lexeme"
   <> iva "Data.Coerce" "coerce"
   <> id1 "GHC.Types" "IO"
   <> id1 "GHC.Types" "Int"
   <> id1 "GHC.Types" "Word"
   <> ida "GHC.ForeignPtr" "ForeignPtr"
   <> ida "GHC.ForeignPtr" "ForeignPtrContents"
   <> iva "GHC.ForeignPtr" "newForeignPtr_"
   <> iva "System.IO.Unsafe" "unsafeDupablePerformIO"
   <> ida "GHC.TypeLits" "ErrorMessage"
   <> id0 "GHC.TypeLits" "TypeError"
   <> id0 "GHC.TypeLits" "KnownNat"
   <> id0 "GHC.TypeLits" "CmpNat"
   <> iva "GHC.TypeLits" "natVal'"
  where
    ida m t = Map.fromList $ withISpec
      [ (DIThing t DITAll ,  ModuleName () m)
      , (DIThing t DITEmpty, ModuleName () m)
      , (DIThing t DITNo,    ModuleName () m)
      ]
    id0 m t = Map.fromList $ withISpec
      [ (DIThing t DITEmpty, ModuleName () m)
      , (DIThing t DITNo,    ModuleName () m)
      ]
    id1 m t = Map.fromList $ withISpec
      [ (DIThing t DITAll,   ModuleName () m)
      ]
    -- ity m t x = Map.fromList [ (DIThing t x, ModuleName () m) ]
    iva m t = Map.fromList $ withISpec
      [ (DIVar t, ModuleName () m) ]
    ipa m t = Map.fromList $ withISpec
      [ (DIPat t, ModuleName () m) ]
    withISpec = map withISpec'
    withISpec' (di,m) = (di, (m, [diToImportSpec di]))