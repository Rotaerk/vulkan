{-# OPTIONS_GHC -fno-warn-orphans#-}
{-# OPTIONS_HADDOCK not-home#-}
{-# LANGUAGE DataKinds                #-}
{-# LANGUAGE FlexibleInstances        #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE MagicHash                #-}
{-# LANGUAGE PatternSynonyms          #-}
{-# LANGUAGE Strict                   #-}
{-# LANGUAGE TypeFamilies             #-}
{-# LANGUAGE ViewPatterns             #-}
module Graphics.Vulkan.Ext.VK_GOOGLE_display_timing
       (-- * Vulkan extension: @VK_GOOGLE_display_timing@
        -- |
        --
        -- supported: @vulkan@
        --
        -- contact: @Ian Elliott ianelliott@google.com@
        --
        -- author: @GOOGLE@
        --
        -- type: @device@
        --
        -- Extension number: @93@
        --
        -- Required extensions: 'VK_KHR_swapchain'.
        --

        -- ** Required extensions: 'VK_KHR_swapchain'.
        module Graphics.Vulkan.Types.Struct.PastPresentationTimingGOOGLE,
        module Graphics.Vulkan.Types.Struct.Present,
        module Graphics.Vulkan.Types.Struct.RefreshCycleDurationGOOGLE,
        module Graphics.Vulkan.Types.Enum.Result,
        module Graphics.Vulkan.Types.Enum.StructureType,
        -- > #include "vk_platform.h"
        VkGetRefreshCycleDurationGOOGLE,
        pattern VkGetRefreshCycleDurationGOOGLE,
        HS_vkGetRefreshCycleDurationGOOGLE,
        PFN_vkGetRefreshCycleDurationGOOGLE,
        VkGetPastPresentationTimingGOOGLE,
        pattern VkGetPastPresentationTimingGOOGLE,
        HS_vkGetPastPresentationTimingGOOGLE,
        PFN_vkGetPastPresentationTimingGOOGLE,
        module Graphics.Vulkan.Marshal,
        module Graphics.Vulkan.Types.Handles,
        VK_GOOGLE_DISPLAY_TIMING_SPEC_VERSION,
        pattern VK_GOOGLE_DISPLAY_TIMING_SPEC_VERSION,
        VK_GOOGLE_DISPLAY_TIMING_EXTENSION_NAME,
        pattern VK_GOOGLE_DISPLAY_TIMING_EXTENSION_NAME,
        pattern VK_STRUCTURE_TYPE_PRESENT_TIMES_INFO_GOOGLE)
       where
import           GHC.Ptr                                                   (Ptr (..))
import           Graphics.Vulkan.Marshal
import           Graphics.Vulkan.Marshal.Proc                              (VulkanProc (..))
import           Graphics.Vulkan.Types.Enum.Result
import           Graphics.Vulkan.Types.Enum.StructureType
import           Graphics.Vulkan.Types.Handles
import           Graphics.Vulkan.Types.Struct.PastPresentationTimingGOOGLE
import           Graphics.Vulkan.Types.Struct.Present
import           Graphics.Vulkan.Types.Struct.RefreshCycleDurationGOOGLE

pattern VkGetRefreshCycleDurationGOOGLE :: CString

pattern VkGetRefreshCycleDurationGOOGLE <-
        (is_VkGetRefreshCycleDurationGOOGLE -> True)
  where VkGetRefreshCycleDurationGOOGLE
          = _VkGetRefreshCycleDurationGOOGLE

{-# INLINE _VkGetRefreshCycleDurationGOOGLE #-}

_VkGetRefreshCycleDurationGOOGLE :: CString
_VkGetRefreshCycleDurationGOOGLE
  = Ptr "vkGetRefreshCycleDurationGOOGLE\NUL"#

{-# INLINE is_VkGetRefreshCycleDurationGOOGLE #-}

is_VkGetRefreshCycleDurationGOOGLE :: CString -> Bool
is_VkGetRefreshCycleDurationGOOGLE
  = (EQ ==) . cmpCStrings _VkGetRefreshCycleDurationGOOGLE

type VkGetRefreshCycleDurationGOOGLE =
     "vkGetRefreshCycleDurationGOOGLE"

-- | Success codes: 'VK_SUCCESS'.
--
--   Error codes: 'VK_ERROR_DEVICE_LOST', 'VK_ERROR_SURFACE_LOST_KHR'.
--
--   > VkResult vkGetRefreshCycleDurationGOOGLE
--   >     ( VkDevice device
--   >     , VkSwapchainKHR swapchain
--   >     , VkRefreshCycleDurationGOOGLE* pDisplayTimingProperties
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/html/vkspec.html#vkGetRefreshCycleDurationGOOGLE vkGetRefreshCycleDurationGOOGLE registry at www.khronos.org>
type HS_vkGetRefreshCycleDurationGOOGLE =
     VkDevice -- ^ device
              ->
       VkSwapchainKHR -- ^ swapchain
                      -> Ptr VkRefreshCycleDurationGOOGLE -- ^ pDisplayTimingProperties
                                                          -> IO VkResult

type PFN_vkGetRefreshCycleDurationGOOGLE =
     FunPtr HS_vkGetRefreshCycleDurationGOOGLE

foreign import ccall unsafe "dynamic"
               unwrapVkGetRefreshCycleDurationGOOGLE ::
               PFN_vkGetRefreshCycleDurationGOOGLE ->
                 HS_vkGetRefreshCycleDurationGOOGLE

foreign import ccall safe "dynamic"
               unwrapVkGetRefreshCycleDurationGOOGLESafe ::
               PFN_vkGetRefreshCycleDurationGOOGLE ->
                 HS_vkGetRefreshCycleDurationGOOGLE

instance VulkanProc "vkGetRefreshCycleDurationGOOGLE" where
        type VkProcType "vkGetRefreshCycleDurationGOOGLE" =
             HS_vkGetRefreshCycleDurationGOOGLE
        vkProcSymbol = _VkGetRefreshCycleDurationGOOGLE

        {-# INLINE vkProcSymbol #-}
        unwrapVkProcPtr = unwrapVkGetRefreshCycleDurationGOOGLE

        {-# INLINE unwrapVkProcPtr #-}
        unwrapVkProcPtrSafe = unwrapVkGetRefreshCycleDurationGOOGLESafe

        {-# INLINE unwrapVkProcPtrSafe #-}

pattern VkGetPastPresentationTimingGOOGLE :: CString

pattern VkGetPastPresentationTimingGOOGLE <-
        (is_VkGetPastPresentationTimingGOOGLE -> True)
  where VkGetPastPresentationTimingGOOGLE
          = _VkGetPastPresentationTimingGOOGLE

{-# INLINE _VkGetPastPresentationTimingGOOGLE #-}

_VkGetPastPresentationTimingGOOGLE :: CString
_VkGetPastPresentationTimingGOOGLE
  = Ptr "vkGetPastPresentationTimingGOOGLE\NUL"#

{-# INLINE is_VkGetPastPresentationTimingGOOGLE #-}

is_VkGetPastPresentationTimingGOOGLE :: CString -> Bool
is_VkGetPastPresentationTimingGOOGLE
  = (EQ ==) . cmpCStrings _VkGetPastPresentationTimingGOOGLE

type VkGetPastPresentationTimingGOOGLE =
     "vkGetPastPresentationTimingGOOGLE"

-- | Success codes: 'VK_SUCCESS', 'VK_INCOMPLETE'.
--
--   Error codes: 'VK_ERROR_DEVICE_LOST', 'VK_ERROR_OUT_OF_DATE_KHR', 'VK_ERROR_SURFACE_LOST_KHR'.
--
--   > VkResult vkGetPastPresentationTimingGOOGLE
--   >     ( VkDevice device
--   >     , VkSwapchainKHR swapchain
--   >     , uint32_t* pPresentationTimingCount
--   >     , VkPastPresentationTimingGOOGLE* pPresentationTimings
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/html/vkspec.html#vkGetPastPresentationTimingGOOGLE vkGetPastPresentationTimingGOOGLE registry at www.khronos.org>
type HS_vkGetPastPresentationTimingGOOGLE =
     VkDevice -- ^ device
              ->
       VkSwapchainKHR -- ^ swapchain
                      ->
         Ptr Word32 -- ^ pPresentationTimingCount
                    -> Ptr VkPastPresentationTimingGOOGLE -- ^ pPresentationTimings
                                                          -> IO VkResult

type PFN_vkGetPastPresentationTimingGOOGLE =
     FunPtr HS_vkGetPastPresentationTimingGOOGLE

foreign import ccall unsafe "dynamic"
               unwrapVkGetPastPresentationTimingGOOGLE ::
               PFN_vkGetPastPresentationTimingGOOGLE ->
                 HS_vkGetPastPresentationTimingGOOGLE

foreign import ccall safe "dynamic"
               unwrapVkGetPastPresentationTimingGOOGLESafe ::
               PFN_vkGetPastPresentationTimingGOOGLE ->
                 HS_vkGetPastPresentationTimingGOOGLE

instance VulkanProc "vkGetPastPresentationTimingGOOGLE" where
        type VkProcType "vkGetPastPresentationTimingGOOGLE" =
             HS_vkGetPastPresentationTimingGOOGLE
        vkProcSymbol = _VkGetPastPresentationTimingGOOGLE

        {-# INLINE vkProcSymbol #-}
        unwrapVkProcPtr = unwrapVkGetPastPresentationTimingGOOGLE

        {-# INLINE unwrapVkProcPtr #-}
        unwrapVkProcPtrSafe = unwrapVkGetPastPresentationTimingGOOGLESafe

        {-# INLINE unwrapVkProcPtrSafe #-}

pattern VK_GOOGLE_DISPLAY_TIMING_SPEC_VERSION :: (Num a, Eq a) => a

pattern VK_GOOGLE_DISPLAY_TIMING_SPEC_VERSION = 1

type VK_GOOGLE_DISPLAY_TIMING_SPEC_VERSION = 1

pattern VK_GOOGLE_DISPLAY_TIMING_EXTENSION_NAME :: CString

pattern VK_GOOGLE_DISPLAY_TIMING_EXTENSION_NAME <-
        (is_VK_GOOGLE_DISPLAY_TIMING_EXTENSION_NAME -> True)
  where VK_GOOGLE_DISPLAY_TIMING_EXTENSION_NAME
          = _VK_GOOGLE_DISPLAY_TIMING_EXTENSION_NAME

{-# INLINE _VK_GOOGLE_DISPLAY_TIMING_EXTENSION_NAME #-}

_VK_GOOGLE_DISPLAY_TIMING_EXTENSION_NAME :: CString
_VK_GOOGLE_DISPLAY_TIMING_EXTENSION_NAME
  = Ptr "VK_GOOGLE_display_timing\NUL"#

{-# INLINE is_VK_GOOGLE_DISPLAY_TIMING_EXTENSION_NAME #-}

is_VK_GOOGLE_DISPLAY_TIMING_EXTENSION_NAME :: CString -> Bool
is_VK_GOOGLE_DISPLAY_TIMING_EXTENSION_NAME
  = (EQ ==) . cmpCStrings _VK_GOOGLE_DISPLAY_TIMING_EXTENSION_NAME

type VK_GOOGLE_DISPLAY_TIMING_EXTENSION_NAME =
     "VK_GOOGLE_display_timing"

pattern VK_STRUCTURE_TYPE_PRESENT_TIMES_INFO_GOOGLE ::
        VkStructureType

pattern VK_STRUCTURE_TYPE_PRESENT_TIMES_INFO_GOOGLE =
        VkStructureType 1000092000
