{-# OPTIONS_GHC -fno-warn-orphans#-}
{-# OPTIONS_GHC -fno-warn-unused-imports#-}
{-# OPTIONS_HADDOCK not-home#-}
{-# LANGUAGE CPP                      #-}
{-# LANGUAGE DataKinds                #-}
{-# LANGUAGE FlexibleInstances        #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE MagicHash                #-}
{-# LANGUAGE PatternSynonyms          #-}
{-# LANGUAGE Strict                   #-}
{-# LANGUAGE TypeApplications         #-}
{-# LANGUAGE TypeFamilies             #-}
{-# LANGUAGE ViewPatterns             #-}
module Graphics.Vulkan.Ext.VK_KHR_display
       (-- * Vulkan extension: @VK_KHR_display@
        -- |
        --
        -- supported: @vulkan@
        --
        -- contact: @James Jones @cubanismo,Norbert Nopper @FslNopper@
        --
        -- author: @KHR@
        --
        -- type: @instance@
        --
        -- Extension number: @3@
        --
        -- Required extensions: 'VK_KHR_surface'.
        --

        -- ** Required extensions: 'VK_KHR_surface'.
        module Graphics.Vulkan.Marshal,
        module Graphics.Vulkan.Types.BaseTypes,
        module Graphics.Vulkan.Types.Bitmasks,
        module Graphics.Vulkan.Types.Struct.Display,
        module Graphics.Vulkan.Types.Enum.Display,
        module Graphics.Vulkan.Types.Struct.Extent,
        module Graphics.Vulkan.Types.Struct.Offset,
        module Graphics.Vulkan.Types.Enum.StructureType,
        module Graphics.Vulkan.Types.Enum.Surface,
        -- > #include "vk_platform.h"
        VkGetPhysicalDeviceDisplayPropertiesKHR,
        pattern VkGetPhysicalDeviceDisplayPropertiesKHR,
        HS_vkGetPhysicalDeviceDisplayPropertiesKHR,
        PFN_vkGetPhysicalDeviceDisplayPropertiesKHR,
        vkGetPhysicalDeviceDisplayPropertiesKHR,
        vkGetPhysicalDeviceDisplayPropertiesKHRSafe,
        VkGetPhysicalDeviceDisplayPlanePropertiesKHR,
        pattern VkGetPhysicalDeviceDisplayPlanePropertiesKHR,
        HS_vkGetPhysicalDeviceDisplayPlanePropertiesKHR,
        PFN_vkGetPhysicalDeviceDisplayPlanePropertiesKHR,
        vkGetPhysicalDeviceDisplayPlanePropertiesKHR,
        vkGetPhysicalDeviceDisplayPlanePropertiesKHRSafe,
        VkGetDisplayPlaneSupportedDisplaysKHR,
        pattern VkGetDisplayPlaneSupportedDisplaysKHR,
        HS_vkGetDisplayPlaneSupportedDisplaysKHR,
        PFN_vkGetDisplayPlaneSupportedDisplaysKHR,
        vkGetDisplayPlaneSupportedDisplaysKHR,
        vkGetDisplayPlaneSupportedDisplaysKHRSafe,
        VkGetDisplayModePropertiesKHR,
        pattern VkGetDisplayModePropertiesKHR,
        HS_vkGetDisplayModePropertiesKHR,
        PFN_vkGetDisplayModePropertiesKHR, vkGetDisplayModePropertiesKHR,
        vkGetDisplayModePropertiesKHRSafe, VkCreateDisplayModeKHR,
        pattern VkCreateDisplayModeKHR, HS_vkCreateDisplayModeKHR,
        PFN_vkCreateDisplayModeKHR, vkCreateDisplayModeKHR,
        vkCreateDisplayModeKHRSafe, VkGetDisplayPlaneCapabilitiesKHR,
        pattern VkGetDisplayPlaneCapabilitiesKHR,
        HS_vkGetDisplayPlaneCapabilitiesKHR,
        PFN_vkGetDisplayPlaneCapabilitiesKHR,
        vkGetDisplayPlaneCapabilitiesKHR,
        vkGetDisplayPlaneCapabilitiesKHRSafe,
        VkCreateDisplayPlaneSurfaceKHR,
        pattern VkCreateDisplayPlaneSurfaceKHR,
        HS_vkCreateDisplayPlaneSurfaceKHR,
        PFN_vkCreateDisplayPlaneSurfaceKHR, vkCreateDisplayPlaneSurfaceKHR,
        vkCreateDisplayPlaneSurfaceKHRSafe,
        module Graphics.Vulkan.Types.Enum.InternalAllocationType,
        module Graphics.Vulkan.Types.Enum.Result,
        module Graphics.Vulkan.Types.Enum.SystemAllocationScope,
        module Graphics.Vulkan.Types.Funcpointers,
        module Graphics.Vulkan.Types.Handles,
        module Graphics.Vulkan.Types.Struct.AllocationCallbacks,
        VK_KHR_DISPLAY_SPEC_VERSION, pattern VK_KHR_DISPLAY_SPEC_VERSION,
        VK_KHR_DISPLAY_EXTENSION_NAME,
        pattern VK_KHR_DISPLAY_EXTENSION_NAME,
        pattern VK_STRUCTURE_TYPE_DISPLAY_MODE_CREATE_INFO_KHR,
        pattern VK_STRUCTURE_TYPE_DISPLAY_SURFACE_CREATE_INFO_KHR,
        pattern VK_OBJECT_TYPE_DISPLAY_KHR,
        pattern VK_OBJECT_TYPE_DISPLAY_MODE_KHR)
       where
import           GHC.Ptr                                           (Ptr (..))
import           Graphics.Vulkan.Marshal
import           Graphics.Vulkan.Marshal.Proc
import           Graphics.Vulkan.Types.BaseTypes
import           Graphics.Vulkan.Types.Bitmasks
import           Graphics.Vulkan.Types.Enum.Display
import           Graphics.Vulkan.Types.Enum.InternalAllocationType
import           Graphics.Vulkan.Types.Enum.Object                 (VkObjectType (..))
import           Graphics.Vulkan.Types.Enum.Result
import           Graphics.Vulkan.Types.Enum.StructureType
import           Graphics.Vulkan.Types.Enum.Surface
import           Graphics.Vulkan.Types.Enum.SystemAllocationScope
import           Graphics.Vulkan.Types.Funcpointers
import           Graphics.Vulkan.Types.Handles
import           Graphics.Vulkan.Types.Struct.AllocationCallbacks
import           Graphics.Vulkan.Types.Struct.Display
import           Graphics.Vulkan.Types.Struct.Extent
import           Graphics.Vulkan.Types.Struct.Offset
import           System.IO.Unsafe                                  (unsafeDupablePerformIO)

pattern VkGetPhysicalDeviceDisplayPropertiesKHR :: CString

pattern VkGetPhysicalDeviceDisplayPropertiesKHR <-
        (is_VkGetPhysicalDeviceDisplayPropertiesKHR -> True)
  where VkGetPhysicalDeviceDisplayPropertiesKHR
          = _VkGetPhysicalDeviceDisplayPropertiesKHR

{-# INLINE _VkGetPhysicalDeviceDisplayPropertiesKHR #-}

_VkGetPhysicalDeviceDisplayPropertiesKHR :: CString
_VkGetPhysicalDeviceDisplayPropertiesKHR
  = Ptr "vkGetPhysicalDeviceDisplayPropertiesKHR\NUL"#

{-# INLINE is_VkGetPhysicalDeviceDisplayPropertiesKHR #-}

is_VkGetPhysicalDeviceDisplayPropertiesKHR :: CString -> Bool
is_VkGetPhysicalDeviceDisplayPropertiesKHR
  = (EQ ==) . cmpCStrings _VkGetPhysicalDeviceDisplayPropertiesKHR

type VkGetPhysicalDeviceDisplayPropertiesKHR =
     "vkGetPhysicalDeviceDisplayPropertiesKHR"

-- |
-- Success codes: 'VK_SUCCESS', 'VK_INCOMPLETE'.
--
-- Error codes: 'VK_ERROR_OUT_OF_HOST_MEMORY', 'VK_ERROR_OUT_OF_DEVICE_MEMORY'.
--
-- > VkResult vkGetPhysicalDeviceDisplayPropertiesKHR
-- >     ( VkPhysicalDevice physicalDevice
-- >     , uint32_t* pPropertyCount
-- >     , VkDisplayPropertiesKHR* pProperties
-- >     )
--
-- <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/html/vkspec.html#vkGetPhysicalDeviceDisplayPropertiesKHR vkGetPhysicalDeviceDisplayPropertiesKHR registry at www.khronos.org>
--
-- __Note:__ When @useNativeFFI-1-0@ cabal flag is enabled, this function is linked statically
--           as a @foreign import@ call to C Vulkan loader.
--           Otherwise, it is looked up dynamically at runtime using dlsym-like machinery (platform-dependent).
--
-- Independently of the flag setting, you can lookup the function manually at runtime:
--
-- > myGetPhysicalDeviceDisplayPropertiesKHR <- vkGetInstanceProc @VkGetPhysicalDeviceDisplayPropertiesKHR vkInstance
--
-- or less efficient:
--
-- > myGetPhysicalDeviceDisplayPropertiesKHR <- vkGetProc @VkGetPhysicalDeviceDisplayPropertiesKHR
--
-- __Note:__ @vkXxx@ and @vkXxxSafe@ versions of the call refer to
--           using @unsafe@ of @safe@ FFI respectively.
--
#ifdef NATIVE_FFI_VK_VERSION_1_0
foreign import ccall unsafe
               "vkGetPhysicalDeviceDisplayPropertiesKHR"
               vkGetPhysicalDeviceDisplayPropertiesKHR ::
               VkPhysicalDevice -- ^ physicalDevice
                                ->
                 Ptr Word32 -- ^ pPropertyCount
                            -> Ptr VkDisplayPropertiesKHR -- ^ pProperties
                                                          -> IO VkResult

#else
vkGetPhysicalDeviceDisplayPropertiesKHR ::
                                        VkPhysicalDevice -- ^ physicalDevice
                                                         ->
                                          Ptr Word32 -- ^ pPropertyCount
                                                     -> Ptr VkDisplayPropertiesKHR -- ^ pProperties
                                                                                   -> IO VkResult
vkGetPhysicalDeviceDisplayPropertiesKHR
  = unsafeDupablePerformIO
      (vkGetProc @VkGetPhysicalDeviceDisplayPropertiesKHR)

{-# NOINLINE vkGetPhysicalDeviceDisplayPropertiesKHR #-}
#endif

-- |
-- Success codes: 'VK_SUCCESS', 'VK_INCOMPLETE'.
--
-- Error codes: 'VK_ERROR_OUT_OF_HOST_MEMORY', 'VK_ERROR_OUT_OF_DEVICE_MEMORY'.
--
-- > VkResult vkGetPhysicalDeviceDisplayPropertiesKHR
-- >     ( VkPhysicalDevice physicalDevice
-- >     , uint32_t* pPropertyCount
-- >     , VkDisplayPropertiesKHR* pProperties
-- >     )
--
-- <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/html/vkspec.html#vkGetPhysicalDeviceDisplayPropertiesKHR vkGetPhysicalDeviceDisplayPropertiesKHR registry at www.khronos.org>
--
-- __Note:__ When @useNativeFFI-1-0@ cabal flag is enabled, this function is linked statically
--           as a @foreign import@ call to C Vulkan loader.
--           Otherwise, it is looked up dynamically at runtime using dlsym-like machinery (platform-dependent).
--
-- Independently of the flag setting, you can lookup the function manually at runtime:
--
-- > myGetPhysicalDeviceDisplayPropertiesKHR <- vkGetInstanceProc @VkGetPhysicalDeviceDisplayPropertiesKHR vkInstance
--
-- or less efficient:
--
-- > myGetPhysicalDeviceDisplayPropertiesKHR <- vkGetProc @VkGetPhysicalDeviceDisplayPropertiesKHR
--
-- __Note:__ @vkXxx@ and @vkXxxSafe@ versions of the call refer to
--           using @unsafe@ of @safe@ FFI respectively.
--
#ifdef NATIVE_FFI_VK_VERSION_1_0
foreign import ccall safe "vkGetPhysicalDeviceDisplayPropertiesKHR"
               vkGetPhysicalDeviceDisplayPropertiesKHRSafe ::
               VkPhysicalDevice -- ^ physicalDevice
                                ->
                 Ptr Word32 -- ^ pPropertyCount
                            -> Ptr VkDisplayPropertiesKHR -- ^ pProperties
                                                          -> IO VkResult

#else
vkGetPhysicalDeviceDisplayPropertiesKHRSafe ::
                                            VkPhysicalDevice -- ^ physicalDevice
                                                             ->
                                              Ptr Word32 -- ^ pPropertyCount
                                                         ->
                                                Ptr VkDisplayPropertiesKHR -- ^ pProperties
                                                                           -> IO VkResult
vkGetPhysicalDeviceDisplayPropertiesKHRSafe
  = unsafeDupablePerformIO
      (vkGetProcSafe @VkGetPhysicalDeviceDisplayPropertiesKHR)

{-# NOINLINE vkGetPhysicalDeviceDisplayPropertiesKHRSafe #-}
#endif

-- | Success codes: 'VK_SUCCESS', 'VK_INCOMPLETE'.
--
--   Error codes: 'VK_ERROR_OUT_OF_HOST_MEMORY', 'VK_ERROR_OUT_OF_DEVICE_MEMORY'.
--
--   > VkResult vkGetPhysicalDeviceDisplayPropertiesKHR
--   >     ( VkPhysicalDevice physicalDevice
--   >     , uint32_t* pPropertyCount
--   >     , VkDisplayPropertiesKHR* pProperties
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/html/vkspec.html#vkGetPhysicalDeviceDisplayPropertiesKHR vkGetPhysicalDeviceDisplayPropertiesKHR registry at www.khronos.org>
type HS_vkGetPhysicalDeviceDisplayPropertiesKHR =
     VkPhysicalDevice -- ^ physicalDevice
                      ->
       Ptr Word32 -- ^ pPropertyCount
                  -> Ptr VkDisplayPropertiesKHR -- ^ pProperties
                                                -> IO VkResult

type PFN_vkGetPhysicalDeviceDisplayPropertiesKHR =
     FunPtr HS_vkGetPhysicalDeviceDisplayPropertiesKHR

foreign import ccall unsafe "dynamic"
               unwrapVkGetPhysicalDeviceDisplayPropertiesKHR ::
               PFN_vkGetPhysicalDeviceDisplayPropertiesKHR ->
                 HS_vkGetPhysicalDeviceDisplayPropertiesKHR

foreign import ccall safe "dynamic"
               unwrapVkGetPhysicalDeviceDisplayPropertiesKHRSafe ::
               PFN_vkGetPhysicalDeviceDisplayPropertiesKHR ->
                 HS_vkGetPhysicalDeviceDisplayPropertiesKHR

instance VulkanProc "vkGetPhysicalDeviceDisplayPropertiesKHR" where
        type VkProcType "vkGetPhysicalDeviceDisplayPropertiesKHR" =
             HS_vkGetPhysicalDeviceDisplayPropertiesKHR
        vkProcSymbol = _VkGetPhysicalDeviceDisplayPropertiesKHR

        {-# INLINE vkProcSymbol #-}
        unwrapVkProcPtr = unwrapVkGetPhysicalDeviceDisplayPropertiesKHR

        {-# INLINE unwrapVkProcPtr #-}
        unwrapVkProcPtrSafe
          = unwrapVkGetPhysicalDeviceDisplayPropertiesKHRSafe

        {-# INLINE unwrapVkProcPtrSafe #-}

pattern VkGetPhysicalDeviceDisplayPlanePropertiesKHR :: CString

pattern VkGetPhysicalDeviceDisplayPlanePropertiesKHR <-
        (is_VkGetPhysicalDeviceDisplayPlanePropertiesKHR -> True)
  where VkGetPhysicalDeviceDisplayPlanePropertiesKHR
          = _VkGetPhysicalDeviceDisplayPlanePropertiesKHR

{-# INLINE _VkGetPhysicalDeviceDisplayPlanePropertiesKHR #-}

_VkGetPhysicalDeviceDisplayPlanePropertiesKHR :: CString
_VkGetPhysicalDeviceDisplayPlanePropertiesKHR
  = Ptr "vkGetPhysicalDeviceDisplayPlanePropertiesKHR\NUL"#

{-# INLINE is_VkGetPhysicalDeviceDisplayPlanePropertiesKHR #-}

is_VkGetPhysicalDeviceDisplayPlanePropertiesKHR :: CString -> Bool
is_VkGetPhysicalDeviceDisplayPlanePropertiesKHR
  = (EQ ==) .
      cmpCStrings _VkGetPhysicalDeviceDisplayPlanePropertiesKHR

type VkGetPhysicalDeviceDisplayPlanePropertiesKHR =
     "vkGetPhysicalDeviceDisplayPlanePropertiesKHR"

-- |
-- Success codes: 'VK_SUCCESS', 'VK_INCOMPLETE'.
--
-- Error codes: 'VK_ERROR_OUT_OF_HOST_MEMORY', 'VK_ERROR_OUT_OF_DEVICE_MEMORY'.
--
-- > VkResult vkGetPhysicalDeviceDisplayPlanePropertiesKHR
-- >     ( VkPhysicalDevice physicalDevice
-- >     , uint32_t* pPropertyCount
-- >     , VkDisplayPlanePropertiesKHR* pProperties
-- >     )
--
-- <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/html/vkspec.html#vkGetPhysicalDeviceDisplayPlanePropertiesKHR vkGetPhysicalDeviceDisplayPlanePropertiesKHR registry at www.khronos.org>
--
-- __Note:__ When @useNativeFFI-1-0@ cabal flag is enabled, this function is linked statically
--           as a @foreign import@ call to C Vulkan loader.
--           Otherwise, it is looked up dynamically at runtime using dlsym-like machinery (platform-dependent).
--
-- Independently of the flag setting, you can lookup the function manually at runtime:
--
-- > myGetPhysicalDeviceDisplayPlanePropertiesKHR <- vkGetInstanceProc @VkGetPhysicalDeviceDisplayPlanePropertiesKHR vkInstance
--
-- or less efficient:
--
-- > myGetPhysicalDeviceDisplayPlanePropertiesKHR <- vkGetProc @VkGetPhysicalDeviceDisplayPlanePropertiesKHR
--
-- __Note:__ @vkXxx@ and @vkXxxSafe@ versions of the call refer to
--           using @unsafe@ of @safe@ FFI respectively.
--
#ifdef NATIVE_FFI_VK_VERSION_1_0
foreign import ccall unsafe
               "vkGetPhysicalDeviceDisplayPlanePropertiesKHR"
               vkGetPhysicalDeviceDisplayPlanePropertiesKHR ::
               VkPhysicalDevice -- ^ physicalDevice
                                ->
                 Ptr Word32 -- ^ pPropertyCount
                            -> Ptr VkDisplayPlanePropertiesKHR -- ^ pProperties
                                                               -> IO VkResult

#else
vkGetPhysicalDeviceDisplayPlanePropertiesKHR ::
                                             VkPhysicalDevice -- ^ physicalDevice
                                                              ->
                                               Ptr Word32 -- ^ pPropertyCount
                                                          ->
                                                 Ptr VkDisplayPlanePropertiesKHR -- ^ pProperties
                                                                                 -> IO VkResult
vkGetPhysicalDeviceDisplayPlanePropertiesKHR
  = unsafeDupablePerformIO
      (vkGetProc @VkGetPhysicalDeviceDisplayPlanePropertiesKHR)

{-# NOINLINE vkGetPhysicalDeviceDisplayPlanePropertiesKHR #-}
#endif

-- |
-- Success codes: 'VK_SUCCESS', 'VK_INCOMPLETE'.
--
-- Error codes: 'VK_ERROR_OUT_OF_HOST_MEMORY', 'VK_ERROR_OUT_OF_DEVICE_MEMORY'.
--
-- > VkResult vkGetPhysicalDeviceDisplayPlanePropertiesKHR
-- >     ( VkPhysicalDevice physicalDevice
-- >     , uint32_t* pPropertyCount
-- >     , VkDisplayPlanePropertiesKHR* pProperties
-- >     )
--
-- <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/html/vkspec.html#vkGetPhysicalDeviceDisplayPlanePropertiesKHR vkGetPhysicalDeviceDisplayPlanePropertiesKHR registry at www.khronos.org>
--
-- __Note:__ When @useNativeFFI-1-0@ cabal flag is enabled, this function is linked statically
--           as a @foreign import@ call to C Vulkan loader.
--           Otherwise, it is looked up dynamically at runtime using dlsym-like machinery (platform-dependent).
--
-- Independently of the flag setting, you can lookup the function manually at runtime:
--
-- > myGetPhysicalDeviceDisplayPlanePropertiesKHR <- vkGetInstanceProc @VkGetPhysicalDeviceDisplayPlanePropertiesKHR vkInstance
--
-- or less efficient:
--
-- > myGetPhysicalDeviceDisplayPlanePropertiesKHR <- vkGetProc @VkGetPhysicalDeviceDisplayPlanePropertiesKHR
--
-- __Note:__ @vkXxx@ and @vkXxxSafe@ versions of the call refer to
--           using @unsafe@ of @safe@ FFI respectively.
--
#ifdef NATIVE_FFI_VK_VERSION_1_0
foreign import ccall safe
               "vkGetPhysicalDeviceDisplayPlanePropertiesKHR"
               vkGetPhysicalDeviceDisplayPlanePropertiesKHRSafe ::
               VkPhysicalDevice -- ^ physicalDevice
                                ->
                 Ptr Word32 -- ^ pPropertyCount
                            -> Ptr VkDisplayPlanePropertiesKHR -- ^ pProperties
                                                               -> IO VkResult

#else
vkGetPhysicalDeviceDisplayPlanePropertiesKHRSafe ::
                                                 VkPhysicalDevice -- ^ physicalDevice
                                                                  ->
                                                   Ptr Word32 -- ^ pPropertyCount
                                                              ->
                                                     Ptr VkDisplayPlanePropertiesKHR -- ^ pProperties
                                                                                     -> IO VkResult
vkGetPhysicalDeviceDisplayPlanePropertiesKHRSafe
  = unsafeDupablePerformIO
      (vkGetProcSafe @VkGetPhysicalDeviceDisplayPlanePropertiesKHR)

{-# NOINLINE vkGetPhysicalDeviceDisplayPlanePropertiesKHRSafe #-}
#endif

-- | Success codes: 'VK_SUCCESS', 'VK_INCOMPLETE'.
--
--   Error codes: 'VK_ERROR_OUT_OF_HOST_MEMORY', 'VK_ERROR_OUT_OF_DEVICE_MEMORY'.
--
--   > VkResult vkGetPhysicalDeviceDisplayPlanePropertiesKHR
--   >     ( VkPhysicalDevice physicalDevice
--   >     , uint32_t* pPropertyCount
--   >     , VkDisplayPlanePropertiesKHR* pProperties
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/html/vkspec.html#vkGetPhysicalDeviceDisplayPlanePropertiesKHR vkGetPhysicalDeviceDisplayPlanePropertiesKHR registry at www.khronos.org>
type HS_vkGetPhysicalDeviceDisplayPlanePropertiesKHR =
     VkPhysicalDevice -- ^ physicalDevice
                      ->
       Ptr Word32 -- ^ pPropertyCount
                  -> Ptr VkDisplayPlanePropertiesKHR -- ^ pProperties
                                                     -> IO VkResult

type PFN_vkGetPhysicalDeviceDisplayPlanePropertiesKHR =
     FunPtr HS_vkGetPhysicalDeviceDisplayPlanePropertiesKHR

foreign import ccall unsafe "dynamic"
               unwrapVkGetPhysicalDeviceDisplayPlanePropertiesKHR ::
               PFN_vkGetPhysicalDeviceDisplayPlanePropertiesKHR ->
                 HS_vkGetPhysicalDeviceDisplayPlanePropertiesKHR

foreign import ccall safe "dynamic"
               unwrapVkGetPhysicalDeviceDisplayPlanePropertiesKHRSafe ::
               PFN_vkGetPhysicalDeviceDisplayPlanePropertiesKHR ->
                 HS_vkGetPhysicalDeviceDisplayPlanePropertiesKHR

instance VulkanProc "vkGetPhysicalDeviceDisplayPlanePropertiesKHR"
         where
        type VkProcType "vkGetPhysicalDeviceDisplayPlanePropertiesKHR" =
             HS_vkGetPhysicalDeviceDisplayPlanePropertiesKHR
        vkProcSymbol = _VkGetPhysicalDeviceDisplayPlanePropertiesKHR

        {-# INLINE vkProcSymbol #-}
        unwrapVkProcPtr
          = unwrapVkGetPhysicalDeviceDisplayPlanePropertiesKHR

        {-# INLINE unwrapVkProcPtr #-}
        unwrapVkProcPtrSafe
          = unwrapVkGetPhysicalDeviceDisplayPlanePropertiesKHRSafe

        {-# INLINE unwrapVkProcPtrSafe #-}

pattern VkGetDisplayPlaneSupportedDisplaysKHR :: CString

pattern VkGetDisplayPlaneSupportedDisplaysKHR <-
        (is_VkGetDisplayPlaneSupportedDisplaysKHR -> True)
  where VkGetDisplayPlaneSupportedDisplaysKHR
          = _VkGetDisplayPlaneSupportedDisplaysKHR

{-# INLINE _VkGetDisplayPlaneSupportedDisplaysKHR #-}

_VkGetDisplayPlaneSupportedDisplaysKHR :: CString
_VkGetDisplayPlaneSupportedDisplaysKHR
  = Ptr "vkGetDisplayPlaneSupportedDisplaysKHR\NUL"#

{-# INLINE is_VkGetDisplayPlaneSupportedDisplaysKHR #-}

is_VkGetDisplayPlaneSupportedDisplaysKHR :: CString -> Bool
is_VkGetDisplayPlaneSupportedDisplaysKHR
  = (EQ ==) . cmpCStrings _VkGetDisplayPlaneSupportedDisplaysKHR

type VkGetDisplayPlaneSupportedDisplaysKHR =
     "vkGetDisplayPlaneSupportedDisplaysKHR"

-- |
-- Success codes: 'VK_SUCCESS', 'VK_INCOMPLETE'.
--
-- Error codes: 'VK_ERROR_OUT_OF_HOST_MEMORY', 'VK_ERROR_OUT_OF_DEVICE_MEMORY'.
--
-- > VkResult vkGetDisplayPlaneSupportedDisplaysKHR
-- >     ( VkPhysicalDevice physicalDevice
-- >     , uint32_t planeIndex
-- >     , uint32_t* pDisplayCount
-- >     , VkDisplayKHR* pDisplays
-- >     )
--
-- <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/html/vkspec.html#vkGetDisplayPlaneSupportedDisplaysKHR vkGetDisplayPlaneSupportedDisplaysKHR registry at www.khronos.org>
--
-- __Note:__ When @useNativeFFI-1-0@ cabal flag is enabled, this function is linked statically
--           as a @foreign import@ call to C Vulkan loader.
--           Otherwise, it is looked up dynamically at runtime using dlsym-like machinery (platform-dependent).
--
-- Independently of the flag setting, you can lookup the function manually at runtime:
--
-- > myGetDisplayPlaneSupportedDisplaysKHR <- vkGetInstanceProc @VkGetDisplayPlaneSupportedDisplaysKHR vkInstance
--
-- or less efficient:
--
-- > myGetDisplayPlaneSupportedDisplaysKHR <- vkGetProc @VkGetDisplayPlaneSupportedDisplaysKHR
--
-- __Note:__ @vkXxx@ and @vkXxxSafe@ versions of the call refer to
--           using @unsafe@ of @safe@ FFI respectively.
--
#ifdef NATIVE_FFI_VK_VERSION_1_0
foreign import ccall unsafe "vkGetDisplayPlaneSupportedDisplaysKHR"
               vkGetDisplayPlaneSupportedDisplaysKHR ::
               VkPhysicalDevice -- ^ physicalDevice
                                ->
                 Word32 -- ^ planeIndex
                        -> Ptr Word32 -- ^ pDisplayCount
                                      -> Ptr VkDisplayKHR -- ^ pDisplays
                                                          -> IO VkResult

#else
vkGetDisplayPlaneSupportedDisplaysKHR ::
                                      VkPhysicalDevice -- ^ physicalDevice
                                                       ->
                                        Word32 -- ^ planeIndex
                                               -> Ptr Word32 -- ^ pDisplayCount
                                                             -> Ptr VkDisplayKHR -- ^ pDisplays
                                                                                 -> IO VkResult
vkGetDisplayPlaneSupportedDisplaysKHR
  = unsafeDupablePerformIO
      (vkGetProc @VkGetDisplayPlaneSupportedDisplaysKHR)

{-# NOINLINE vkGetDisplayPlaneSupportedDisplaysKHR #-}
#endif

-- |
-- Success codes: 'VK_SUCCESS', 'VK_INCOMPLETE'.
--
-- Error codes: 'VK_ERROR_OUT_OF_HOST_MEMORY', 'VK_ERROR_OUT_OF_DEVICE_MEMORY'.
--
-- > VkResult vkGetDisplayPlaneSupportedDisplaysKHR
-- >     ( VkPhysicalDevice physicalDevice
-- >     , uint32_t planeIndex
-- >     , uint32_t* pDisplayCount
-- >     , VkDisplayKHR* pDisplays
-- >     )
--
-- <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/html/vkspec.html#vkGetDisplayPlaneSupportedDisplaysKHR vkGetDisplayPlaneSupportedDisplaysKHR registry at www.khronos.org>
--
-- __Note:__ When @useNativeFFI-1-0@ cabal flag is enabled, this function is linked statically
--           as a @foreign import@ call to C Vulkan loader.
--           Otherwise, it is looked up dynamically at runtime using dlsym-like machinery (platform-dependent).
--
-- Independently of the flag setting, you can lookup the function manually at runtime:
--
-- > myGetDisplayPlaneSupportedDisplaysKHR <- vkGetInstanceProc @VkGetDisplayPlaneSupportedDisplaysKHR vkInstance
--
-- or less efficient:
--
-- > myGetDisplayPlaneSupportedDisplaysKHR <- vkGetProc @VkGetDisplayPlaneSupportedDisplaysKHR
--
-- __Note:__ @vkXxx@ and @vkXxxSafe@ versions of the call refer to
--           using @unsafe@ of @safe@ FFI respectively.
--
#ifdef NATIVE_FFI_VK_VERSION_1_0
foreign import ccall safe "vkGetDisplayPlaneSupportedDisplaysKHR"
               vkGetDisplayPlaneSupportedDisplaysKHRSafe ::
               VkPhysicalDevice -- ^ physicalDevice
                                ->
                 Word32 -- ^ planeIndex
                        -> Ptr Word32 -- ^ pDisplayCount
                                      -> Ptr VkDisplayKHR -- ^ pDisplays
                                                          -> IO VkResult

#else
vkGetDisplayPlaneSupportedDisplaysKHRSafe ::
                                          VkPhysicalDevice -- ^ physicalDevice
                                                           ->
                                            Word32 -- ^ planeIndex
                                                   -> Ptr Word32 -- ^ pDisplayCount
                                                                 -> Ptr VkDisplayKHR -- ^ pDisplays
                                                                                     -> IO VkResult
vkGetDisplayPlaneSupportedDisplaysKHRSafe
  = unsafeDupablePerformIO
      (vkGetProcSafe @VkGetDisplayPlaneSupportedDisplaysKHR)

{-# NOINLINE vkGetDisplayPlaneSupportedDisplaysKHRSafe #-}
#endif

-- | Success codes: 'VK_SUCCESS', 'VK_INCOMPLETE'.
--
--   Error codes: 'VK_ERROR_OUT_OF_HOST_MEMORY', 'VK_ERROR_OUT_OF_DEVICE_MEMORY'.
--
--   > VkResult vkGetDisplayPlaneSupportedDisplaysKHR
--   >     ( VkPhysicalDevice physicalDevice
--   >     , uint32_t planeIndex
--   >     , uint32_t* pDisplayCount
--   >     , VkDisplayKHR* pDisplays
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/html/vkspec.html#vkGetDisplayPlaneSupportedDisplaysKHR vkGetDisplayPlaneSupportedDisplaysKHR registry at www.khronos.org>
type HS_vkGetDisplayPlaneSupportedDisplaysKHR =
     VkPhysicalDevice -- ^ physicalDevice
                      ->
       Word32 -- ^ planeIndex
              -> Ptr Word32 -- ^ pDisplayCount
                            -> Ptr VkDisplayKHR -- ^ pDisplays
                                                -> IO VkResult

type PFN_vkGetDisplayPlaneSupportedDisplaysKHR =
     FunPtr HS_vkGetDisplayPlaneSupportedDisplaysKHR

foreign import ccall unsafe "dynamic"
               unwrapVkGetDisplayPlaneSupportedDisplaysKHR ::
               PFN_vkGetDisplayPlaneSupportedDisplaysKHR ->
                 HS_vkGetDisplayPlaneSupportedDisplaysKHR

foreign import ccall safe "dynamic"
               unwrapVkGetDisplayPlaneSupportedDisplaysKHRSafe ::
               PFN_vkGetDisplayPlaneSupportedDisplaysKHR ->
                 HS_vkGetDisplayPlaneSupportedDisplaysKHR

instance VulkanProc "vkGetDisplayPlaneSupportedDisplaysKHR" where
        type VkProcType "vkGetDisplayPlaneSupportedDisplaysKHR" =
             HS_vkGetDisplayPlaneSupportedDisplaysKHR
        vkProcSymbol = _VkGetDisplayPlaneSupportedDisplaysKHR

        {-# INLINE vkProcSymbol #-}
        unwrapVkProcPtr = unwrapVkGetDisplayPlaneSupportedDisplaysKHR

        {-# INLINE unwrapVkProcPtr #-}
        unwrapVkProcPtrSafe
          = unwrapVkGetDisplayPlaneSupportedDisplaysKHRSafe

        {-# INLINE unwrapVkProcPtrSafe #-}

pattern VkGetDisplayModePropertiesKHR :: CString

pattern VkGetDisplayModePropertiesKHR <-
        (is_VkGetDisplayModePropertiesKHR -> True)
  where VkGetDisplayModePropertiesKHR
          = _VkGetDisplayModePropertiesKHR

{-# INLINE _VkGetDisplayModePropertiesKHR #-}

_VkGetDisplayModePropertiesKHR :: CString
_VkGetDisplayModePropertiesKHR
  = Ptr "vkGetDisplayModePropertiesKHR\NUL"#

{-# INLINE is_VkGetDisplayModePropertiesKHR #-}

is_VkGetDisplayModePropertiesKHR :: CString -> Bool
is_VkGetDisplayModePropertiesKHR
  = (EQ ==) . cmpCStrings _VkGetDisplayModePropertiesKHR

type VkGetDisplayModePropertiesKHR =
     "vkGetDisplayModePropertiesKHR"

-- |
-- Success codes: 'VK_SUCCESS', 'VK_INCOMPLETE'.
--
-- Error codes: 'VK_ERROR_OUT_OF_HOST_MEMORY', 'VK_ERROR_OUT_OF_DEVICE_MEMORY'.
--
-- > VkResult vkGetDisplayModePropertiesKHR
-- >     ( VkPhysicalDevice physicalDevice
-- >     , VkDisplayKHR display
-- >     , uint32_t* pPropertyCount
-- >     , VkDisplayModePropertiesKHR* pProperties
-- >     )
--
-- <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/html/vkspec.html#vkGetDisplayModePropertiesKHR vkGetDisplayModePropertiesKHR registry at www.khronos.org>
--
-- __Note:__ When @useNativeFFI-1-0@ cabal flag is enabled, this function is linked statically
--           as a @foreign import@ call to C Vulkan loader.
--           Otherwise, it is looked up dynamically at runtime using dlsym-like machinery (platform-dependent).
--
-- Independently of the flag setting, you can lookup the function manually at runtime:
--
-- > myGetDisplayModePropertiesKHR <- vkGetInstanceProc @VkGetDisplayModePropertiesKHR vkInstance
--
-- or less efficient:
--
-- > myGetDisplayModePropertiesKHR <- vkGetProc @VkGetDisplayModePropertiesKHR
--
-- __Note:__ @vkXxx@ and @vkXxxSafe@ versions of the call refer to
--           using @unsafe@ of @safe@ FFI respectively.
--
#ifdef NATIVE_FFI_VK_VERSION_1_0
foreign import ccall unsafe "vkGetDisplayModePropertiesKHR"
               vkGetDisplayModePropertiesKHR ::
               VkPhysicalDevice -- ^ physicalDevice
                                ->
                 VkDisplayKHR -- ^ display
                              ->
                   Ptr Word32 -- ^ pPropertyCount
                              -> Ptr VkDisplayModePropertiesKHR -- ^ pProperties
                                                                -> IO VkResult

#else
vkGetDisplayModePropertiesKHR ::
                              VkPhysicalDevice -- ^ physicalDevice
                                               ->
                                VkDisplayKHR -- ^ display
                                             ->
                                  Ptr Word32 -- ^ pPropertyCount
                                             -> Ptr VkDisplayModePropertiesKHR -- ^ pProperties
                                                                               -> IO VkResult
vkGetDisplayModePropertiesKHR
  = unsafeDupablePerformIO (vkGetProc @VkGetDisplayModePropertiesKHR)

{-# NOINLINE vkGetDisplayModePropertiesKHR #-}
#endif

-- |
-- Success codes: 'VK_SUCCESS', 'VK_INCOMPLETE'.
--
-- Error codes: 'VK_ERROR_OUT_OF_HOST_MEMORY', 'VK_ERROR_OUT_OF_DEVICE_MEMORY'.
--
-- > VkResult vkGetDisplayModePropertiesKHR
-- >     ( VkPhysicalDevice physicalDevice
-- >     , VkDisplayKHR display
-- >     , uint32_t* pPropertyCount
-- >     , VkDisplayModePropertiesKHR* pProperties
-- >     )
--
-- <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/html/vkspec.html#vkGetDisplayModePropertiesKHR vkGetDisplayModePropertiesKHR registry at www.khronos.org>
--
-- __Note:__ When @useNativeFFI-1-0@ cabal flag is enabled, this function is linked statically
--           as a @foreign import@ call to C Vulkan loader.
--           Otherwise, it is looked up dynamically at runtime using dlsym-like machinery (platform-dependent).
--
-- Independently of the flag setting, you can lookup the function manually at runtime:
--
-- > myGetDisplayModePropertiesKHR <- vkGetInstanceProc @VkGetDisplayModePropertiesKHR vkInstance
--
-- or less efficient:
--
-- > myGetDisplayModePropertiesKHR <- vkGetProc @VkGetDisplayModePropertiesKHR
--
-- __Note:__ @vkXxx@ and @vkXxxSafe@ versions of the call refer to
--           using @unsafe@ of @safe@ FFI respectively.
--
#ifdef NATIVE_FFI_VK_VERSION_1_0
foreign import ccall safe "vkGetDisplayModePropertiesKHR"
               vkGetDisplayModePropertiesKHRSafe ::
               VkPhysicalDevice -- ^ physicalDevice
                                ->
                 VkDisplayKHR -- ^ display
                              ->
                   Ptr Word32 -- ^ pPropertyCount
                              -> Ptr VkDisplayModePropertiesKHR -- ^ pProperties
                                                                -> IO VkResult

#else
vkGetDisplayModePropertiesKHRSafe ::
                                  VkPhysicalDevice -- ^ physicalDevice
                                                   ->
                                    VkDisplayKHR -- ^ display
                                                 ->
                                      Ptr Word32 -- ^ pPropertyCount
                                                 -> Ptr VkDisplayModePropertiesKHR -- ^ pProperties
                                                                                   -> IO VkResult
vkGetDisplayModePropertiesKHRSafe
  = unsafeDupablePerformIO
      (vkGetProcSafe @VkGetDisplayModePropertiesKHR)

{-# NOINLINE vkGetDisplayModePropertiesKHRSafe #-}
#endif

-- | Success codes: 'VK_SUCCESS', 'VK_INCOMPLETE'.
--
--   Error codes: 'VK_ERROR_OUT_OF_HOST_MEMORY', 'VK_ERROR_OUT_OF_DEVICE_MEMORY'.
--
--   > VkResult vkGetDisplayModePropertiesKHR
--   >     ( VkPhysicalDevice physicalDevice
--   >     , VkDisplayKHR display
--   >     , uint32_t* pPropertyCount
--   >     , VkDisplayModePropertiesKHR* pProperties
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/html/vkspec.html#vkGetDisplayModePropertiesKHR vkGetDisplayModePropertiesKHR registry at www.khronos.org>
type HS_vkGetDisplayModePropertiesKHR =
     VkPhysicalDevice -- ^ physicalDevice
                      ->
       VkDisplayKHR -- ^ display
                    ->
         Ptr Word32 -- ^ pPropertyCount
                    -> Ptr VkDisplayModePropertiesKHR -- ^ pProperties
                                                      -> IO VkResult

type PFN_vkGetDisplayModePropertiesKHR =
     FunPtr HS_vkGetDisplayModePropertiesKHR

foreign import ccall unsafe "dynamic"
               unwrapVkGetDisplayModePropertiesKHR ::
               PFN_vkGetDisplayModePropertiesKHR ->
                 HS_vkGetDisplayModePropertiesKHR

foreign import ccall safe "dynamic"
               unwrapVkGetDisplayModePropertiesKHRSafe ::
               PFN_vkGetDisplayModePropertiesKHR ->
                 HS_vkGetDisplayModePropertiesKHR

instance VulkanProc "vkGetDisplayModePropertiesKHR" where
        type VkProcType "vkGetDisplayModePropertiesKHR" =
             HS_vkGetDisplayModePropertiesKHR
        vkProcSymbol = _VkGetDisplayModePropertiesKHR

        {-# INLINE vkProcSymbol #-}
        unwrapVkProcPtr = unwrapVkGetDisplayModePropertiesKHR

        {-# INLINE unwrapVkProcPtr #-}
        unwrapVkProcPtrSafe = unwrapVkGetDisplayModePropertiesKHRSafe

        {-# INLINE unwrapVkProcPtrSafe #-}

pattern VkCreateDisplayModeKHR :: CString

pattern VkCreateDisplayModeKHR <-
        (is_VkCreateDisplayModeKHR -> True)
  where VkCreateDisplayModeKHR = _VkCreateDisplayModeKHR

{-# INLINE _VkCreateDisplayModeKHR #-}

_VkCreateDisplayModeKHR :: CString
_VkCreateDisplayModeKHR = Ptr "vkCreateDisplayModeKHR\NUL"#

{-# INLINE is_VkCreateDisplayModeKHR #-}

is_VkCreateDisplayModeKHR :: CString -> Bool
is_VkCreateDisplayModeKHR
  = (EQ ==) . cmpCStrings _VkCreateDisplayModeKHR

type VkCreateDisplayModeKHR = "vkCreateDisplayModeKHR"

-- |
-- Success codes: 'VK_SUCCESS'.
--
-- Error codes: 'VK_ERROR_OUT_OF_HOST_MEMORY', 'VK_ERROR_OUT_OF_DEVICE_MEMORY', 'VK_ERROR_INITIALIZATION_FAILED'.
--
-- > VkResult vkCreateDisplayModeKHR
-- >     ( VkPhysicalDevice physicalDevice
-- >     , VkDisplayKHR display
-- >     , const VkDisplayModeCreateInfoKHR* pCreateInfo
-- >     , const VkAllocationCallbacks* pAllocator
-- >     , VkDisplayModeKHR* pMode
-- >     )
--
-- <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/html/vkspec.html#vkCreateDisplayModeKHR vkCreateDisplayModeKHR registry at www.khronos.org>
--
-- __Note:__ When @useNativeFFI-1-0@ cabal flag is enabled, this function is linked statically
--           as a @foreign import@ call to C Vulkan loader.
--           Otherwise, it is looked up dynamically at runtime using dlsym-like machinery (platform-dependent).
--
-- Independently of the flag setting, you can lookup the function manually at runtime:
--
-- > myCreateDisplayModeKHR <- vkGetInstanceProc @VkCreateDisplayModeKHR vkInstance
--
-- or less efficient:
--
-- > myCreateDisplayModeKHR <- vkGetProc @VkCreateDisplayModeKHR
--
-- __Note:__ @vkXxx@ and @vkXxxSafe@ versions of the call refer to
--           using @unsafe@ of @safe@ FFI respectively.
--
#ifdef NATIVE_FFI_VK_VERSION_1_0
foreign import ccall unsafe "vkCreateDisplayModeKHR"
               vkCreateDisplayModeKHR ::
               VkPhysicalDevice -- ^ physicalDevice
                                ->
                 VkDisplayKHR -- ^ display
                              ->
                   Ptr VkDisplayModeCreateInfoKHR -- ^ pCreateInfo
                                                  ->
                     Ptr VkAllocationCallbacks -- ^ pAllocator
                                               -> Ptr VkDisplayModeKHR -- ^ pMode
                                                                       -> IO VkResult

#else
vkCreateDisplayModeKHR ::
                       VkPhysicalDevice -- ^ physicalDevice
                                        ->
                         VkDisplayKHR -- ^ display
                                      ->
                           Ptr VkDisplayModeCreateInfoKHR -- ^ pCreateInfo
                                                          ->
                             Ptr VkAllocationCallbacks -- ^ pAllocator
                                                       -> Ptr VkDisplayModeKHR -- ^ pMode
                                                                               -> IO VkResult
vkCreateDisplayModeKHR
  = unsafeDupablePerformIO (vkGetProc @VkCreateDisplayModeKHR)

{-# NOINLINE vkCreateDisplayModeKHR #-}
#endif

-- |
-- Success codes: 'VK_SUCCESS'.
--
-- Error codes: 'VK_ERROR_OUT_OF_HOST_MEMORY', 'VK_ERROR_OUT_OF_DEVICE_MEMORY', 'VK_ERROR_INITIALIZATION_FAILED'.
--
-- > VkResult vkCreateDisplayModeKHR
-- >     ( VkPhysicalDevice physicalDevice
-- >     , VkDisplayKHR display
-- >     , const VkDisplayModeCreateInfoKHR* pCreateInfo
-- >     , const VkAllocationCallbacks* pAllocator
-- >     , VkDisplayModeKHR* pMode
-- >     )
--
-- <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/html/vkspec.html#vkCreateDisplayModeKHR vkCreateDisplayModeKHR registry at www.khronos.org>
--
-- __Note:__ When @useNativeFFI-1-0@ cabal flag is enabled, this function is linked statically
--           as a @foreign import@ call to C Vulkan loader.
--           Otherwise, it is looked up dynamically at runtime using dlsym-like machinery (platform-dependent).
--
-- Independently of the flag setting, you can lookup the function manually at runtime:
--
-- > myCreateDisplayModeKHR <- vkGetInstanceProc @VkCreateDisplayModeKHR vkInstance
--
-- or less efficient:
--
-- > myCreateDisplayModeKHR <- vkGetProc @VkCreateDisplayModeKHR
--
-- __Note:__ @vkXxx@ and @vkXxxSafe@ versions of the call refer to
--           using @unsafe@ of @safe@ FFI respectively.
--
#ifdef NATIVE_FFI_VK_VERSION_1_0
foreign import ccall safe "vkCreateDisplayModeKHR"
               vkCreateDisplayModeKHRSafe ::
               VkPhysicalDevice -- ^ physicalDevice
                                ->
                 VkDisplayKHR -- ^ display
                              ->
                   Ptr VkDisplayModeCreateInfoKHR -- ^ pCreateInfo
                                                  ->
                     Ptr VkAllocationCallbacks -- ^ pAllocator
                                               -> Ptr VkDisplayModeKHR -- ^ pMode
                                                                       -> IO VkResult

#else
vkCreateDisplayModeKHRSafe ::
                           VkPhysicalDevice -- ^ physicalDevice
                                            ->
                             VkDisplayKHR -- ^ display
                                          ->
                               Ptr VkDisplayModeCreateInfoKHR -- ^ pCreateInfo
                                                              ->
                                 Ptr VkAllocationCallbacks -- ^ pAllocator
                                                           -> Ptr VkDisplayModeKHR -- ^ pMode
                                                                                   -> IO VkResult
vkCreateDisplayModeKHRSafe
  = unsafeDupablePerformIO (vkGetProcSafe @VkCreateDisplayModeKHR)

{-# NOINLINE vkCreateDisplayModeKHRSafe #-}
#endif

-- | Success codes: 'VK_SUCCESS'.
--
--   Error codes: 'VK_ERROR_OUT_OF_HOST_MEMORY', 'VK_ERROR_OUT_OF_DEVICE_MEMORY', 'VK_ERROR_INITIALIZATION_FAILED'.
--
--   > VkResult vkCreateDisplayModeKHR
--   >     ( VkPhysicalDevice physicalDevice
--   >     , VkDisplayKHR display
--   >     , const VkDisplayModeCreateInfoKHR* pCreateInfo
--   >     , const VkAllocationCallbacks* pAllocator
--   >     , VkDisplayModeKHR* pMode
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/html/vkspec.html#vkCreateDisplayModeKHR vkCreateDisplayModeKHR registry at www.khronos.org>
type HS_vkCreateDisplayModeKHR =
     VkPhysicalDevice -- ^ physicalDevice
                      ->
       VkDisplayKHR -- ^ display
                    ->
         Ptr VkDisplayModeCreateInfoKHR -- ^ pCreateInfo
                                        ->
           Ptr VkAllocationCallbacks -- ^ pAllocator
                                     -> Ptr VkDisplayModeKHR -- ^ pMode
                                                             -> IO VkResult

type PFN_vkCreateDisplayModeKHR = FunPtr HS_vkCreateDisplayModeKHR

foreign import ccall unsafe "dynamic" unwrapVkCreateDisplayModeKHR
               :: PFN_vkCreateDisplayModeKHR -> HS_vkCreateDisplayModeKHR

foreign import ccall safe "dynamic"
               unwrapVkCreateDisplayModeKHRSafe ::
               PFN_vkCreateDisplayModeKHR -> HS_vkCreateDisplayModeKHR

instance VulkanProc "vkCreateDisplayModeKHR" where
        type VkProcType "vkCreateDisplayModeKHR" =
             HS_vkCreateDisplayModeKHR
        vkProcSymbol = _VkCreateDisplayModeKHR

        {-# INLINE vkProcSymbol #-}
        unwrapVkProcPtr = unwrapVkCreateDisplayModeKHR

        {-# INLINE unwrapVkProcPtr #-}
        unwrapVkProcPtrSafe = unwrapVkCreateDisplayModeKHRSafe

        {-# INLINE unwrapVkProcPtrSafe #-}

pattern VkGetDisplayPlaneCapabilitiesKHR :: CString

pattern VkGetDisplayPlaneCapabilitiesKHR <-
        (is_VkGetDisplayPlaneCapabilitiesKHR -> True)
  where VkGetDisplayPlaneCapabilitiesKHR
          = _VkGetDisplayPlaneCapabilitiesKHR

{-# INLINE _VkGetDisplayPlaneCapabilitiesKHR #-}

_VkGetDisplayPlaneCapabilitiesKHR :: CString
_VkGetDisplayPlaneCapabilitiesKHR
  = Ptr "vkGetDisplayPlaneCapabilitiesKHR\NUL"#

{-# INLINE is_VkGetDisplayPlaneCapabilitiesKHR #-}

is_VkGetDisplayPlaneCapabilitiesKHR :: CString -> Bool
is_VkGetDisplayPlaneCapabilitiesKHR
  = (EQ ==) . cmpCStrings _VkGetDisplayPlaneCapabilitiesKHR

type VkGetDisplayPlaneCapabilitiesKHR =
     "vkGetDisplayPlaneCapabilitiesKHR"

-- |
-- Success codes: 'VK_SUCCESS'.
--
-- Error codes: 'VK_ERROR_OUT_OF_HOST_MEMORY', 'VK_ERROR_OUT_OF_DEVICE_MEMORY'.
--
-- > VkResult vkGetDisplayPlaneCapabilitiesKHR
-- >     ( VkPhysicalDevice physicalDevice
-- >     , VkDisplayModeKHR mode
-- >     , uint32_t planeIndex
-- >     , VkDisplayPlaneCapabilitiesKHR* pCapabilities
-- >     )
--
-- <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/html/vkspec.html#vkGetDisplayPlaneCapabilitiesKHR vkGetDisplayPlaneCapabilitiesKHR registry at www.khronos.org>
--
-- __Note:__ When @useNativeFFI-1-0@ cabal flag is enabled, this function is linked statically
--           as a @foreign import@ call to C Vulkan loader.
--           Otherwise, it is looked up dynamically at runtime using dlsym-like machinery (platform-dependent).
--
-- Independently of the flag setting, you can lookup the function manually at runtime:
--
-- > myGetDisplayPlaneCapabilitiesKHR <- vkGetInstanceProc @VkGetDisplayPlaneCapabilitiesKHR vkInstance
--
-- or less efficient:
--
-- > myGetDisplayPlaneCapabilitiesKHR <- vkGetProc @VkGetDisplayPlaneCapabilitiesKHR
--
-- __Note:__ @vkXxx@ and @vkXxxSafe@ versions of the call refer to
--           using @unsafe@ of @safe@ FFI respectively.
--
#ifdef NATIVE_FFI_VK_VERSION_1_0
foreign import ccall unsafe "vkGetDisplayPlaneCapabilitiesKHR"
               vkGetDisplayPlaneCapabilitiesKHR ::
               VkPhysicalDevice -- ^ physicalDevice
                                ->
                 VkDisplayModeKHR -- ^ mode
                                  ->
                   Word32 -- ^ planeIndex
                          -> Ptr VkDisplayPlaneCapabilitiesKHR -- ^ pCapabilities
                                                               -> IO VkResult

#else
vkGetDisplayPlaneCapabilitiesKHR ::
                                 VkPhysicalDevice -- ^ physicalDevice
                                                  ->
                                   VkDisplayModeKHR -- ^ mode
                                                    ->
                                     Word32 -- ^ planeIndex
                                            -> Ptr VkDisplayPlaneCapabilitiesKHR -- ^ pCapabilities
                                                                                 -> IO VkResult
vkGetDisplayPlaneCapabilitiesKHR
  = unsafeDupablePerformIO
      (vkGetProc @VkGetDisplayPlaneCapabilitiesKHR)

{-# NOINLINE vkGetDisplayPlaneCapabilitiesKHR #-}
#endif

-- |
-- Success codes: 'VK_SUCCESS'.
--
-- Error codes: 'VK_ERROR_OUT_OF_HOST_MEMORY', 'VK_ERROR_OUT_OF_DEVICE_MEMORY'.
--
-- > VkResult vkGetDisplayPlaneCapabilitiesKHR
-- >     ( VkPhysicalDevice physicalDevice
-- >     , VkDisplayModeKHR mode
-- >     , uint32_t planeIndex
-- >     , VkDisplayPlaneCapabilitiesKHR* pCapabilities
-- >     )
--
-- <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/html/vkspec.html#vkGetDisplayPlaneCapabilitiesKHR vkGetDisplayPlaneCapabilitiesKHR registry at www.khronos.org>
--
-- __Note:__ When @useNativeFFI-1-0@ cabal flag is enabled, this function is linked statically
--           as a @foreign import@ call to C Vulkan loader.
--           Otherwise, it is looked up dynamically at runtime using dlsym-like machinery (platform-dependent).
--
-- Independently of the flag setting, you can lookup the function manually at runtime:
--
-- > myGetDisplayPlaneCapabilitiesKHR <- vkGetInstanceProc @VkGetDisplayPlaneCapabilitiesKHR vkInstance
--
-- or less efficient:
--
-- > myGetDisplayPlaneCapabilitiesKHR <- vkGetProc @VkGetDisplayPlaneCapabilitiesKHR
--
-- __Note:__ @vkXxx@ and @vkXxxSafe@ versions of the call refer to
--           using @unsafe@ of @safe@ FFI respectively.
--
#ifdef NATIVE_FFI_VK_VERSION_1_0
foreign import ccall safe "vkGetDisplayPlaneCapabilitiesKHR"
               vkGetDisplayPlaneCapabilitiesKHRSafe ::
               VkPhysicalDevice -- ^ physicalDevice
                                ->
                 VkDisplayModeKHR -- ^ mode
                                  ->
                   Word32 -- ^ planeIndex
                          -> Ptr VkDisplayPlaneCapabilitiesKHR -- ^ pCapabilities
                                                               -> IO VkResult

#else
vkGetDisplayPlaneCapabilitiesKHRSafe ::
                                     VkPhysicalDevice -- ^ physicalDevice
                                                      ->
                                       VkDisplayModeKHR -- ^ mode
                                                        ->
                                         Word32 -- ^ planeIndex
                                                -> Ptr VkDisplayPlaneCapabilitiesKHR -- ^ pCapabilities
                                                                                     -> IO VkResult
vkGetDisplayPlaneCapabilitiesKHRSafe
  = unsafeDupablePerformIO
      (vkGetProcSafe @VkGetDisplayPlaneCapabilitiesKHR)

{-# NOINLINE vkGetDisplayPlaneCapabilitiesKHRSafe #-}
#endif

-- | Success codes: 'VK_SUCCESS'.
--
--   Error codes: 'VK_ERROR_OUT_OF_HOST_MEMORY', 'VK_ERROR_OUT_OF_DEVICE_MEMORY'.
--
--   > VkResult vkGetDisplayPlaneCapabilitiesKHR
--   >     ( VkPhysicalDevice physicalDevice
--   >     , VkDisplayModeKHR mode
--   >     , uint32_t planeIndex
--   >     , VkDisplayPlaneCapabilitiesKHR* pCapabilities
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/html/vkspec.html#vkGetDisplayPlaneCapabilitiesKHR vkGetDisplayPlaneCapabilitiesKHR registry at www.khronos.org>
type HS_vkGetDisplayPlaneCapabilitiesKHR =
     VkPhysicalDevice -- ^ physicalDevice
                      ->
       VkDisplayModeKHR -- ^ mode
                        ->
         Word32 -- ^ planeIndex
                -> Ptr VkDisplayPlaneCapabilitiesKHR -- ^ pCapabilities
                                                     -> IO VkResult

type PFN_vkGetDisplayPlaneCapabilitiesKHR =
     FunPtr HS_vkGetDisplayPlaneCapabilitiesKHR

foreign import ccall unsafe "dynamic"
               unwrapVkGetDisplayPlaneCapabilitiesKHR ::
               PFN_vkGetDisplayPlaneCapabilitiesKHR ->
                 HS_vkGetDisplayPlaneCapabilitiesKHR

foreign import ccall safe "dynamic"
               unwrapVkGetDisplayPlaneCapabilitiesKHRSafe ::
               PFN_vkGetDisplayPlaneCapabilitiesKHR ->
                 HS_vkGetDisplayPlaneCapabilitiesKHR

instance VulkanProc "vkGetDisplayPlaneCapabilitiesKHR" where
        type VkProcType "vkGetDisplayPlaneCapabilitiesKHR" =
             HS_vkGetDisplayPlaneCapabilitiesKHR
        vkProcSymbol = _VkGetDisplayPlaneCapabilitiesKHR

        {-# INLINE vkProcSymbol #-}
        unwrapVkProcPtr = unwrapVkGetDisplayPlaneCapabilitiesKHR

        {-# INLINE unwrapVkProcPtr #-}
        unwrapVkProcPtrSafe = unwrapVkGetDisplayPlaneCapabilitiesKHRSafe

        {-# INLINE unwrapVkProcPtrSafe #-}

pattern VkCreateDisplayPlaneSurfaceKHR :: CString

pattern VkCreateDisplayPlaneSurfaceKHR <-
        (is_VkCreateDisplayPlaneSurfaceKHR -> True)
  where VkCreateDisplayPlaneSurfaceKHR
          = _VkCreateDisplayPlaneSurfaceKHR

{-# INLINE _VkCreateDisplayPlaneSurfaceKHR #-}

_VkCreateDisplayPlaneSurfaceKHR :: CString
_VkCreateDisplayPlaneSurfaceKHR
  = Ptr "vkCreateDisplayPlaneSurfaceKHR\NUL"#

{-# INLINE is_VkCreateDisplayPlaneSurfaceKHR #-}

is_VkCreateDisplayPlaneSurfaceKHR :: CString -> Bool
is_VkCreateDisplayPlaneSurfaceKHR
  = (EQ ==) . cmpCStrings _VkCreateDisplayPlaneSurfaceKHR

type VkCreateDisplayPlaneSurfaceKHR =
     "vkCreateDisplayPlaneSurfaceKHR"

-- |
-- Success codes: 'VK_SUCCESS'.
--
-- Error codes: 'VK_ERROR_OUT_OF_HOST_MEMORY', 'VK_ERROR_OUT_OF_DEVICE_MEMORY'.
--
-- > VkResult vkCreateDisplayPlaneSurfaceKHR
-- >     ( VkInstance instance
-- >     , const VkDisplaySurfaceCreateInfoKHR* pCreateInfo
-- >     , const VkAllocationCallbacks* pAllocator
-- >     , VkSurfaceKHR* pSurface
-- >     )
--
-- <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/html/vkspec.html#vkCreateDisplayPlaneSurfaceKHR vkCreateDisplayPlaneSurfaceKHR registry at www.khronos.org>
--
-- __Note:__ When @useNativeFFI-1-0@ cabal flag is enabled, this function is linked statically
--           as a @foreign import@ call to C Vulkan loader.
--           Otherwise, it is looked up dynamically at runtime using dlsym-like machinery (platform-dependent).
--
-- Independently of the flag setting, you can lookup the function manually at runtime:
--
-- > myCreateDisplayPlaneSurfaceKHR <- vkGetInstanceProc @VkCreateDisplayPlaneSurfaceKHR vkInstance
--
-- or less efficient:
--
-- > myCreateDisplayPlaneSurfaceKHR <- vkGetProc @VkCreateDisplayPlaneSurfaceKHR
--
-- __Note:__ @vkXxx@ and @vkXxxSafe@ versions of the call refer to
--           using @unsafe@ of @safe@ FFI respectively.
--
#ifdef NATIVE_FFI_VK_VERSION_1_0
foreign import ccall unsafe "vkCreateDisplayPlaneSurfaceKHR"
               vkCreateDisplayPlaneSurfaceKHR ::
               VkInstance -- ^ instance
                          ->
                 Ptr VkDisplaySurfaceCreateInfoKHR -- ^ pCreateInfo
                                                   ->
                   Ptr VkAllocationCallbacks -- ^ pAllocator
                                             -> Ptr VkSurfaceKHR -- ^ pSurface
                                                                 -> IO VkResult

#else
vkCreateDisplayPlaneSurfaceKHR ::
                               VkInstance -- ^ instance
                                          ->
                                 Ptr VkDisplaySurfaceCreateInfoKHR -- ^ pCreateInfo
                                                                   ->
                                   Ptr VkAllocationCallbacks -- ^ pAllocator
                                                             -> Ptr VkSurfaceKHR -- ^ pSurface
                                                                                 -> IO VkResult
vkCreateDisplayPlaneSurfaceKHR
  = unsafeDupablePerformIO
      (vkGetProc @VkCreateDisplayPlaneSurfaceKHR)

{-# NOINLINE vkCreateDisplayPlaneSurfaceKHR #-}
#endif

-- |
-- Success codes: 'VK_SUCCESS'.
--
-- Error codes: 'VK_ERROR_OUT_OF_HOST_MEMORY', 'VK_ERROR_OUT_OF_DEVICE_MEMORY'.
--
-- > VkResult vkCreateDisplayPlaneSurfaceKHR
-- >     ( VkInstance instance
-- >     , const VkDisplaySurfaceCreateInfoKHR* pCreateInfo
-- >     , const VkAllocationCallbacks* pAllocator
-- >     , VkSurfaceKHR* pSurface
-- >     )
--
-- <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/html/vkspec.html#vkCreateDisplayPlaneSurfaceKHR vkCreateDisplayPlaneSurfaceKHR registry at www.khronos.org>
--
-- __Note:__ When @useNativeFFI-1-0@ cabal flag is enabled, this function is linked statically
--           as a @foreign import@ call to C Vulkan loader.
--           Otherwise, it is looked up dynamically at runtime using dlsym-like machinery (platform-dependent).
--
-- Independently of the flag setting, you can lookup the function manually at runtime:
--
-- > myCreateDisplayPlaneSurfaceKHR <- vkGetInstanceProc @VkCreateDisplayPlaneSurfaceKHR vkInstance
--
-- or less efficient:
--
-- > myCreateDisplayPlaneSurfaceKHR <- vkGetProc @VkCreateDisplayPlaneSurfaceKHR
--
-- __Note:__ @vkXxx@ and @vkXxxSafe@ versions of the call refer to
--           using @unsafe@ of @safe@ FFI respectively.
--
#ifdef NATIVE_FFI_VK_VERSION_1_0
foreign import ccall safe "vkCreateDisplayPlaneSurfaceKHR"
               vkCreateDisplayPlaneSurfaceKHRSafe ::
               VkInstance -- ^ instance
                          ->
                 Ptr VkDisplaySurfaceCreateInfoKHR -- ^ pCreateInfo
                                                   ->
                   Ptr VkAllocationCallbacks -- ^ pAllocator
                                             -> Ptr VkSurfaceKHR -- ^ pSurface
                                                                 -> IO VkResult

#else
vkCreateDisplayPlaneSurfaceKHRSafe ::
                                   VkInstance -- ^ instance
                                              ->
                                     Ptr VkDisplaySurfaceCreateInfoKHR -- ^ pCreateInfo
                                                                       ->
                                       Ptr VkAllocationCallbacks -- ^ pAllocator
                                                                 -> Ptr VkSurfaceKHR -- ^ pSurface
                                                                                     -> IO VkResult
vkCreateDisplayPlaneSurfaceKHRSafe
  = unsafeDupablePerformIO
      (vkGetProcSafe @VkCreateDisplayPlaneSurfaceKHR)

{-# NOINLINE vkCreateDisplayPlaneSurfaceKHRSafe #-}
#endif

-- | Success codes: 'VK_SUCCESS'.
--
--   Error codes: 'VK_ERROR_OUT_OF_HOST_MEMORY', 'VK_ERROR_OUT_OF_DEVICE_MEMORY'.
--
--   > VkResult vkCreateDisplayPlaneSurfaceKHR
--   >     ( VkInstance instance
--   >     , const VkDisplaySurfaceCreateInfoKHR* pCreateInfo
--   >     , const VkAllocationCallbacks* pAllocator
--   >     , VkSurfaceKHR* pSurface
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/html/vkspec.html#vkCreateDisplayPlaneSurfaceKHR vkCreateDisplayPlaneSurfaceKHR registry at www.khronos.org>
type HS_vkCreateDisplayPlaneSurfaceKHR =
     VkInstance -- ^ instance
                ->
       Ptr VkDisplaySurfaceCreateInfoKHR -- ^ pCreateInfo
                                         ->
         Ptr VkAllocationCallbacks -- ^ pAllocator
                                   -> Ptr VkSurfaceKHR -- ^ pSurface
                                                       -> IO VkResult

type PFN_vkCreateDisplayPlaneSurfaceKHR =
     FunPtr HS_vkCreateDisplayPlaneSurfaceKHR

foreign import ccall unsafe "dynamic"
               unwrapVkCreateDisplayPlaneSurfaceKHR ::
               PFN_vkCreateDisplayPlaneSurfaceKHR ->
                 HS_vkCreateDisplayPlaneSurfaceKHR

foreign import ccall safe "dynamic"
               unwrapVkCreateDisplayPlaneSurfaceKHRSafe ::
               PFN_vkCreateDisplayPlaneSurfaceKHR ->
                 HS_vkCreateDisplayPlaneSurfaceKHR

instance VulkanProc "vkCreateDisplayPlaneSurfaceKHR" where
        type VkProcType "vkCreateDisplayPlaneSurfaceKHR" =
             HS_vkCreateDisplayPlaneSurfaceKHR
        vkProcSymbol = _VkCreateDisplayPlaneSurfaceKHR

        {-# INLINE vkProcSymbol #-}
        unwrapVkProcPtr = unwrapVkCreateDisplayPlaneSurfaceKHR

        {-# INLINE unwrapVkProcPtr #-}
        unwrapVkProcPtrSafe = unwrapVkCreateDisplayPlaneSurfaceKHRSafe

        {-# INLINE unwrapVkProcPtrSafe #-}

pattern VK_KHR_DISPLAY_SPEC_VERSION :: (Num a, Eq a) => a

pattern VK_KHR_DISPLAY_SPEC_VERSION = 21

type VK_KHR_DISPLAY_SPEC_VERSION = 21

pattern VK_KHR_DISPLAY_EXTENSION_NAME :: CString

pattern VK_KHR_DISPLAY_EXTENSION_NAME <-
        (is_VK_KHR_DISPLAY_EXTENSION_NAME -> True)
  where VK_KHR_DISPLAY_EXTENSION_NAME
          = _VK_KHR_DISPLAY_EXTENSION_NAME

{-# INLINE _VK_KHR_DISPLAY_EXTENSION_NAME #-}

_VK_KHR_DISPLAY_EXTENSION_NAME :: CString
_VK_KHR_DISPLAY_EXTENSION_NAME = Ptr "VK_KHR_display\NUL"#

{-# INLINE is_VK_KHR_DISPLAY_EXTENSION_NAME #-}

is_VK_KHR_DISPLAY_EXTENSION_NAME :: CString -> Bool
is_VK_KHR_DISPLAY_EXTENSION_NAME
  = (EQ ==) . cmpCStrings _VK_KHR_DISPLAY_EXTENSION_NAME

type VK_KHR_DISPLAY_EXTENSION_NAME = "VK_KHR_display"

pattern VK_STRUCTURE_TYPE_DISPLAY_MODE_CREATE_INFO_KHR ::
        VkStructureType

pattern VK_STRUCTURE_TYPE_DISPLAY_MODE_CREATE_INFO_KHR =
        VkStructureType 1000002000

pattern VK_STRUCTURE_TYPE_DISPLAY_SURFACE_CREATE_INFO_KHR ::
        VkStructureType

pattern VK_STRUCTURE_TYPE_DISPLAY_SURFACE_CREATE_INFO_KHR =
        VkStructureType 1000002001

-- | VkDisplayKHR
pattern VK_OBJECT_TYPE_DISPLAY_KHR :: VkObjectType

pattern VK_OBJECT_TYPE_DISPLAY_KHR = VkObjectType 1000002000

-- | VkDisplayModeKHR
pattern VK_OBJECT_TYPE_DISPLAY_MODE_KHR :: VkObjectType

pattern VK_OBJECT_TYPE_DISPLAY_MODE_KHR = VkObjectType 1000002001
