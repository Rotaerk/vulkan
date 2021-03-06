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
module Graphics.Vulkan.Ext.VK_NVX_device_generated_commands
       (-- * Vulkan extension: @VK_NVX_device_generated_commands@
        -- |
        --
        -- supported: @vulkan@
        --
        -- contact: @Christoph Kubisch @pixeljetstream@
        --
        -- author: @NVX@
        --
        -- type: @device@
        --
        -- Extension number: @87@
        module Graphics.Vulkan.Types.BaseTypes,
        module Graphics.Vulkan.Types.Struct.Cmd,
        module Graphics.Vulkan.Types.Struct.Device,
        module Graphics.Vulkan.Types.Enum.IndexType,
        module Graphics.Vulkan.Types.Struct.IndirectCommands,
        module Graphics.Vulkan.Types.Enum.IndirectCommands,
        module Graphics.Vulkan.Types.Enum.Object,
        module Graphics.Vulkan.Types.Struct.ObjectTable,
        module Graphics.Vulkan.Types.Enum.Pipeline,
        module Graphics.Vulkan.Types.Enum.Shader,
        module Graphics.Vulkan.Types.Enum.StructureType,
        -- > #include "vk_platform.h"
        VkCmdProcessCommandsNVX, pattern VkCmdProcessCommandsNVX,
        HS_vkCmdProcessCommandsNVX, PFN_vkCmdProcessCommandsNVX,
        VkCmdReserveSpaceForCommandsNVX,
        pattern VkCmdReserveSpaceForCommandsNVX,
        HS_vkCmdReserveSpaceForCommandsNVX,
        PFN_vkCmdReserveSpaceForCommandsNVX,
        VkCreateIndirectCommandsLayoutNVX,
        pattern VkCreateIndirectCommandsLayoutNVX,
        HS_vkCreateIndirectCommandsLayoutNVX,
        PFN_vkCreateIndirectCommandsLayoutNVX,
        VkDestroyIndirectCommandsLayoutNVX,
        pattern VkDestroyIndirectCommandsLayoutNVX,
        HS_vkDestroyIndirectCommandsLayoutNVX,
        PFN_vkDestroyIndirectCommandsLayoutNVX, VkCreateObjectTableNVX,
        pattern VkCreateObjectTableNVX, HS_vkCreateObjectTableNVX,
        PFN_vkCreateObjectTableNVX, VkDestroyObjectTableNVX,
        pattern VkDestroyObjectTableNVX, HS_vkDestroyObjectTableNVX,
        PFN_vkDestroyObjectTableNVX, VkRegisterObjectsNVX,
        pattern VkRegisterObjectsNVX, HS_vkRegisterObjectsNVX,
        PFN_vkRegisterObjectsNVX, VkUnregisterObjectsNVX,
        pattern VkUnregisterObjectsNVX, HS_vkUnregisterObjectsNVX,
        PFN_vkUnregisterObjectsNVX,
        VkGetPhysicalDeviceGeneratedCommandsPropertiesNVX,
        pattern VkGetPhysicalDeviceGeneratedCommandsPropertiesNVX,
        HS_vkGetPhysicalDeviceGeneratedCommandsPropertiesNVX,
        PFN_vkGetPhysicalDeviceGeneratedCommandsPropertiesNVX,
        module Graphics.Vulkan.Marshal,
        module Graphics.Vulkan.Types.Enum.InternalAllocationType,
        module Graphics.Vulkan.Types.Enum.Result,
        module Graphics.Vulkan.Types.Enum.SystemAllocationScope,
        module Graphics.Vulkan.Types.Funcpointers,
        module Graphics.Vulkan.Types.Handles,
        module Graphics.Vulkan.Types.Struct.AllocationCallbacks,
        VK_NVX_DEVICE_GENERATED_COMMANDS_SPEC_VERSION,
        pattern VK_NVX_DEVICE_GENERATED_COMMANDS_SPEC_VERSION,
        VK_NVX_DEVICE_GENERATED_COMMANDS_EXTENSION_NAME,
        pattern VK_NVX_DEVICE_GENERATED_COMMANDS_EXTENSION_NAME,
        pattern VK_STRUCTURE_TYPE_OBJECT_TABLE_CREATE_INFO_NVX,
        pattern VK_STRUCTURE_TYPE_INDIRECT_COMMANDS_LAYOUT_CREATE_INFO_NVX,
        pattern VK_STRUCTURE_TYPE_CMD_PROCESS_COMMANDS_INFO_NVX,
        pattern VK_STRUCTURE_TYPE_CMD_RESERVE_SPACE_FOR_COMMANDS_INFO_NVX,
        pattern VK_STRUCTURE_TYPE_DEVICE_GENERATED_COMMANDS_LIMITS_NVX,
        pattern VK_STRUCTURE_TYPE_DEVICE_GENERATED_COMMANDS_FEATURES_NVX,
        pattern VK_PIPELINE_STAGE_COMMAND_PROCESS_BIT_NVX,
        pattern VK_ACCESS_COMMAND_PROCESS_READ_BIT_NVX,
        pattern VK_ACCESS_COMMAND_PROCESS_WRITE_BIT_NVX,
        pattern VK_OBJECT_TYPE_OBJECT_TABLE_NVX,
        pattern VK_OBJECT_TYPE_INDIRECT_COMMANDS_LAYOUT_NVX)
       where
import           GHC.Ptr                                           (Ptr (..))
import           Graphics.Vulkan.Marshal
import           Graphics.Vulkan.Marshal.Proc                      (VulkanProc (..))
import           Graphics.Vulkan.Types.BaseTypes
import           Graphics.Vulkan.Types.Enum.AccessFlags            (VkAccessBitmask (..),
                                                                    VkAccessFlagBits)
import           Graphics.Vulkan.Types.Enum.IndexType
import           Graphics.Vulkan.Types.Enum.IndirectCommands
import           Graphics.Vulkan.Types.Enum.InternalAllocationType
import           Graphics.Vulkan.Types.Enum.Object
import           Graphics.Vulkan.Types.Enum.Pipeline
import           Graphics.Vulkan.Types.Enum.Result
import           Graphics.Vulkan.Types.Enum.Shader
import           Graphics.Vulkan.Types.Enum.StructureType
import           Graphics.Vulkan.Types.Enum.SystemAllocationScope
import           Graphics.Vulkan.Types.Funcpointers
import           Graphics.Vulkan.Types.Handles
import           Graphics.Vulkan.Types.Struct.AllocationCallbacks
import           Graphics.Vulkan.Types.Struct.Cmd
import           Graphics.Vulkan.Types.Struct.Device
import           Graphics.Vulkan.Types.Struct.IndirectCommands
import           Graphics.Vulkan.Types.Struct.ObjectTable

pattern VkCmdProcessCommandsNVX :: CString

pattern VkCmdProcessCommandsNVX <-
        (is_VkCmdProcessCommandsNVX -> True)
  where VkCmdProcessCommandsNVX = _VkCmdProcessCommandsNVX

{-# INLINE _VkCmdProcessCommandsNVX #-}

_VkCmdProcessCommandsNVX :: CString
_VkCmdProcessCommandsNVX = Ptr "vkCmdProcessCommandsNVX\NUL"#

{-# INLINE is_VkCmdProcessCommandsNVX #-}

is_VkCmdProcessCommandsNVX :: CString -> Bool
is_VkCmdProcessCommandsNVX
  = (EQ ==) . cmpCStrings _VkCmdProcessCommandsNVX

type VkCmdProcessCommandsNVX = "vkCmdProcessCommandsNVX"

-- | Queues: 'graphics', 'compute'.
--
--   Renderpass: @inside@
--
--   > void vkCmdProcessCommandsNVX
--   >     ( VkCommandBuffer commandBuffer
--   >     , const VkCmdProcessCommandsInfoNVX* pProcessCommandsInfo
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/html/vkspec.html#vkCmdProcessCommandsNVX vkCmdProcessCommandsNVX registry at www.khronos.org>
type HS_vkCmdProcessCommandsNVX =
     VkCommandBuffer -- ^ commandBuffer
                     -> Ptr VkCmdProcessCommandsInfoNVX -- ^ pProcessCommandsInfo
                                                        -> IO ()

type PFN_vkCmdProcessCommandsNVX =
     FunPtr HS_vkCmdProcessCommandsNVX

foreign import ccall unsafe "dynamic" unwrapVkCmdProcessCommandsNVX
               :: PFN_vkCmdProcessCommandsNVX -> HS_vkCmdProcessCommandsNVX

foreign import ccall safe "dynamic"
               unwrapVkCmdProcessCommandsNVXSafe ::
               PFN_vkCmdProcessCommandsNVX -> HS_vkCmdProcessCommandsNVX

instance VulkanProc "vkCmdProcessCommandsNVX" where
        type VkProcType "vkCmdProcessCommandsNVX" =
             HS_vkCmdProcessCommandsNVX
        vkProcSymbol = _VkCmdProcessCommandsNVX

        {-# INLINE vkProcSymbol #-}
        unwrapVkProcPtr = unwrapVkCmdProcessCommandsNVX

        {-# INLINE unwrapVkProcPtr #-}
        unwrapVkProcPtrSafe = unwrapVkCmdProcessCommandsNVXSafe

        {-# INLINE unwrapVkProcPtrSafe #-}

pattern VkCmdReserveSpaceForCommandsNVX :: CString

pattern VkCmdReserveSpaceForCommandsNVX <-
        (is_VkCmdReserveSpaceForCommandsNVX -> True)
  where VkCmdReserveSpaceForCommandsNVX
          = _VkCmdReserveSpaceForCommandsNVX

{-# INLINE _VkCmdReserveSpaceForCommandsNVX #-}

_VkCmdReserveSpaceForCommandsNVX :: CString
_VkCmdReserveSpaceForCommandsNVX
  = Ptr "vkCmdReserveSpaceForCommandsNVX\NUL"#

{-# INLINE is_VkCmdReserveSpaceForCommandsNVX #-}

is_VkCmdReserveSpaceForCommandsNVX :: CString -> Bool
is_VkCmdReserveSpaceForCommandsNVX
  = (EQ ==) . cmpCStrings _VkCmdReserveSpaceForCommandsNVX

type VkCmdReserveSpaceForCommandsNVX =
     "vkCmdReserveSpaceForCommandsNVX"

-- | Queues: 'graphics', 'compute'.
--
--   Renderpass: @inside@
--
--   > void vkCmdReserveSpaceForCommandsNVX
--   >     ( VkCommandBuffer commandBuffer
--   >     , const VkCmdReserveSpaceForCommandsInfoNVX* pReserveSpaceInfo
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/html/vkspec.html#vkCmdReserveSpaceForCommandsNVX vkCmdReserveSpaceForCommandsNVX registry at www.khronos.org>
type HS_vkCmdReserveSpaceForCommandsNVX =
     VkCommandBuffer -- ^ commandBuffer
                     -> Ptr VkCmdReserveSpaceForCommandsInfoNVX -- ^ pReserveSpaceInfo
                                                                -> IO ()

type PFN_vkCmdReserveSpaceForCommandsNVX =
     FunPtr HS_vkCmdReserveSpaceForCommandsNVX

foreign import ccall unsafe "dynamic"
               unwrapVkCmdReserveSpaceForCommandsNVX ::
               PFN_vkCmdReserveSpaceForCommandsNVX ->
                 HS_vkCmdReserveSpaceForCommandsNVX

foreign import ccall safe "dynamic"
               unwrapVkCmdReserveSpaceForCommandsNVXSafe ::
               PFN_vkCmdReserveSpaceForCommandsNVX ->
                 HS_vkCmdReserveSpaceForCommandsNVX

instance VulkanProc "vkCmdReserveSpaceForCommandsNVX" where
        type VkProcType "vkCmdReserveSpaceForCommandsNVX" =
             HS_vkCmdReserveSpaceForCommandsNVX
        vkProcSymbol = _VkCmdReserveSpaceForCommandsNVX

        {-# INLINE vkProcSymbol #-}
        unwrapVkProcPtr = unwrapVkCmdReserveSpaceForCommandsNVX

        {-# INLINE unwrapVkProcPtr #-}
        unwrapVkProcPtrSafe = unwrapVkCmdReserveSpaceForCommandsNVXSafe

        {-# INLINE unwrapVkProcPtrSafe #-}

pattern VkCreateIndirectCommandsLayoutNVX :: CString

pattern VkCreateIndirectCommandsLayoutNVX <-
        (is_VkCreateIndirectCommandsLayoutNVX -> True)
  where VkCreateIndirectCommandsLayoutNVX
          = _VkCreateIndirectCommandsLayoutNVX

{-# INLINE _VkCreateIndirectCommandsLayoutNVX #-}

_VkCreateIndirectCommandsLayoutNVX :: CString
_VkCreateIndirectCommandsLayoutNVX
  = Ptr "vkCreateIndirectCommandsLayoutNVX\NUL"#

{-# INLINE is_VkCreateIndirectCommandsLayoutNVX #-}

is_VkCreateIndirectCommandsLayoutNVX :: CString -> Bool
is_VkCreateIndirectCommandsLayoutNVX
  = (EQ ==) . cmpCStrings _VkCreateIndirectCommandsLayoutNVX

type VkCreateIndirectCommandsLayoutNVX =
     "vkCreateIndirectCommandsLayoutNVX"

-- | Success codes: 'VK_SUCCESS'.
--
--   Error codes: 'VK_ERROR_OUT_OF_HOST_MEMORY', 'VK_ERROR_OUT_OF_DEVICE_MEMORY'.
--
--   > VkResult vkCreateIndirectCommandsLayoutNVX
--   >     ( VkDevice device
--   >     , const VkIndirectCommandsLayoutCreateInfoNVX* pCreateInfo
--   >     , const VkAllocationCallbacks* pAllocator
--   >     , VkIndirectCommandsLayoutNVX* pIndirectCommandsLayout
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/html/vkspec.html#vkCreateIndirectCommandsLayoutNVX vkCreateIndirectCommandsLayoutNVX registry at www.khronos.org>
type HS_vkCreateIndirectCommandsLayoutNVX =
     VkDevice -- ^ device
              ->
       Ptr VkIndirectCommandsLayoutCreateInfoNVX -- ^ pCreateInfo
                                                 ->
         Ptr VkAllocationCallbacks -- ^ pAllocator
                                   ->
           Ptr VkIndirectCommandsLayoutNVX -- ^ pIndirectCommandsLayout
                                           -> IO VkResult

type PFN_vkCreateIndirectCommandsLayoutNVX =
     FunPtr HS_vkCreateIndirectCommandsLayoutNVX

foreign import ccall unsafe "dynamic"
               unwrapVkCreateIndirectCommandsLayoutNVX ::
               PFN_vkCreateIndirectCommandsLayoutNVX ->
                 HS_vkCreateIndirectCommandsLayoutNVX

foreign import ccall safe "dynamic"
               unwrapVkCreateIndirectCommandsLayoutNVXSafe ::
               PFN_vkCreateIndirectCommandsLayoutNVX ->
                 HS_vkCreateIndirectCommandsLayoutNVX

instance VulkanProc "vkCreateIndirectCommandsLayoutNVX" where
        type VkProcType "vkCreateIndirectCommandsLayoutNVX" =
             HS_vkCreateIndirectCommandsLayoutNVX
        vkProcSymbol = _VkCreateIndirectCommandsLayoutNVX

        {-# INLINE vkProcSymbol #-}
        unwrapVkProcPtr = unwrapVkCreateIndirectCommandsLayoutNVX

        {-# INLINE unwrapVkProcPtr #-}
        unwrapVkProcPtrSafe = unwrapVkCreateIndirectCommandsLayoutNVXSafe

        {-# INLINE unwrapVkProcPtrSafe #-}

pattern VkDestroyIndirectCommandsLayoutNVX :: CString

pattern VkDestroyIndirectCommandsLayoutNVX <-
        (is_VkDestroyIndirectCommandsLayoutNVX -> True)
  where VkDestroyIndirectCommandsLayoutNVX
          = _VkDestroyIndirectCommandsLayoutNVX

{-# INLINE _VkDestroyIndirectCommandsLayoutNVX #-}

_VkDestroyIndirectCommandsLayoutNVX :: CString
_VkDestroyIndirectCommandsLayoutNVX
  = Ptr "vkDestroyIndirectCommandsLayoutNVX\NUL"#

{-# INLINE is_VkDestroyIndirectCommandsLayoutNVX #-}

is_VkDestroyIndirectCommandsLayoutNVX :: CString -> Bool
is_VkDestroyIndirectCommandsLayoutNVX
  = (EQ ==) . cmpCStrings _VkDestroyIndirectCommandsLayoutNVX

type VkDestroyIndirectCommandsLayoutNVX =
     "vkDestroyIndirectCommandsLayoutNVX"

-- | > void vkDestroyIndirectCommandsLayoutNVX
--   >     ( VkDevice device
--   >     , VkIndirectCommandsLayoutNVX indirectCommandsLayout
--   >     , const VkAllocationCallbacks* pAllocator
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/html/vkspec.html#vkDestroyIndirectCommandsLayoutNVX vkDestroyIndirectCommandsLayoutNVX registry at www.khronos.org>
type HS_vkDestroyIndirectCommandsLayoutNVX =
     VkDevice -- ^ device
              ->
       VkIndirectCommandsLayoutNVX -- ^ indirectCommandsLayout
                                   -> Ptr VkAllocationCallbacks -- ^ pAllocator
                                                                -> IO ()

type PFN_vkDestroyIndirectCommandsLayoutNVX =
     FunPtr HS_vkDestroyIndirectCommandsLayoutNVX

foreign import ccall unsafe "dynamic"
               unwrapVkDestroyIndirectCommandsLayoutNVX ::
               PFN_vkDestroyIndirectCommandsLayoutNVX ->
                 HS_vkDestroyIndirectCommandsLayoutNVX

foreign import ccall safe "dynamic"
               unwrapVkDestroyIndirectCommandsLayoutNVXSafe ::
               PFN_vkDestroyIndirectCommandsLayoutNVX ->
                 HS_vkDestroyIndirectCommandsLayoutNVX

instance VulkanProc "vkDestroyIndirectCommandsLayoutNVX" where
        type VkProcType "vkDestroyIndirectCommandsLayoutNVX" =
             HS_vkDestroyIndirectCommandsLayoutNVX
        vkProcSymbol = _VkDestroyIndirectCommandsLayoutNVX

        {-# INLINE vkProcSymbol #-}
        unwrapVkProcPtr = unwrapVkDestroyIndirectCommandsLayoutNVX

        {-# INLINE unwrapVkProcPtr #-}
        unwrapVkProcPtrSafe = unwrapVkDestroyIndirectCommandsLayoutNVXSafe

        {-# INLINE unwrapVkProcPtrSafe #-}

pattern VkCreateObjectTableNVX :: CString

pattern VkCreateObjectTableNVX <-
        (is_VkCreateObjectTableNVX -> True)
  where VkCreateObjectTableNVX = _VkCreateObjectTableNVX

{-# INLINE _VkCreateObjectTableNVX #-}

_VkCreateObjectTableNVX :: CString
_VkCreateObjectTableNVX = Ptr "vkCreateObjectTableNVX\NUL"#

{-# INLINE is_VkCreateObjectTableNVX #-}

is_VkCreateObjectTableNVX :: CString -> Bool
is_VkCreateObjectTableNVX
  = (EQ ==) . cmpCStrings _VkCreateObjectTableNVX

type VkCreateObjectTableNVX = "vkCreateObjectTableNVX"

-- | Success codes: 'VK_SUCCESS'.
--
--   Error codes: 'VK_ERROR_OUT_OF_HOST_MEMORY', 'VK_ERROR_OUT_OF_DEVICE_MEMORY'.
--
--   > VkResult vkCreateObjectTableNVX
--   >     ( VkDevice device
--   >     , const VkObjectTableCreateInfoNVX* pCreateInfo
--   >     , const VkAllocationCallbacks* pAllocator
--   >     , VkObjectTableNVX* pObjectTable
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/html/vkspec.html#vkCreateObjectTableNVX vkCreateObjectTableNVX registry at www.khronos.org>
type HS_vkCreateObjectTableNVX =
     VkDevice -- ^ device
              ->
       Ptr VkObjectTableCreateInfoNVX -- ^ pCreateInfo
                                      ->
         Ptr VkAllocationCallbacks -- ^ pAllocator
                                   -> Ptr VkObjectTableNVX -- ^ pObjectTable
                                                           -> IO VkResult

type PFN_vkCreateObjectTableNVX = FunPtr HS_vkCreateObjectTableNVX

foreign import ccall unsafe "dynamic" unwrapVkCreateObjectTableNVX
               :: PFN_vkCreateObjectTableNVX -> HS_vkCreateObjectTableNVX

foreign import ccall safe "dynamic"
               unwrapVkCreateObjectTableNVXSafe ::
               PFN_vkCreateObjectTableNVX -> HS_vkCreateObjectTableNVX

instance VulkanProc "vkCreateObjectTableNVX" where
        type VkProcType "vkCreateObjectTableNVX" =
             HS_vkCreateObjectTableNVX
        vkProcSymbol = _VkCreateObjectTableNVX

        {-# INLINE vkProcSymbol #-}
        unwrapVkProcPtr = unwrapVkCreateObjectTableNVX

        {-# INLINE unwrapVkProcPtr #-}
        unwrapVkProcPtrSafe = unwrapVkCreateObjectTableNVXSafe

        {-# INLINE unwrapVkProcPtrSafe #-}

pattern VkDestroyObjectTableNVX :: CString

pattern VkDestroyObjectTableNVX <-
        (is_VkDestroyObjectTableNVX -> True)
  where VkDestroyObjectTableNVX = _VkDestroyObjectTableNVX

{-# INLINE _VkDestroyObjectTableNVX #-}

_VkDestroyObjectTableNVX :: CString
_VkDestroyObjectTableNVX = Ptr "vkDestroyObjectTableNVX\NUL"#

{-# INLINE is_VkDestroyObjectTableNVX #-}

is_VkDestroyObjectTableNVX :: CString -> Bool
is_VkDestroyObjectTableNVX
  = (EQ ==) . cmpCStrings _VkDestroyObjectTableNVX

type VkDestroyObjectTableNVX = "vkDestroyObjectTableNVX"

-- | > void vkDestroyObjectTableNVX
--   >     ( VkDevice device
--   >     , VkObjectTableNVX objectTable
--   >     , const VkAllocationCallbacks* pAllocator
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/html/vkspec.html#vkDestroyObjectTableNVX vkDestroyObjectTableNVX registry at www.khronos.org>
type HS_vkDestroyObjectTableNVX =
     VkDevice -- ^ device
              -> VkObjectTableNVX -- ^ objectTable
                                  -> Ptr VkAllocationCallbacks -- ^ pAllocator
                                                               -> IO ()

type PFN_vkDestroyObjectTableNVX =
     FunPtr HS_vkDestroyObjectTableNVX

foreign import ccall unsafe "dynamic" unwrapVkDestroyObjectTableNVX
               :: PFN_vkDestroyObjectTableNVX -> HS_vkDestroyObjectTableNVX

foreign import ccall safe "dynamic"
               unwrapVkDestroyObjectTableNVXSafe ::
               PFN_vkDestroyObjectTableNVX -> HS_vkDestroyObjectTableNVX

instance VulkanProc "vkDestroyObjectTableNVX" where
        type VkProcType "vkDestroyObjectTableNVX" =
             HS_vkDestroyObjectTableNVX
        vkProcSymbol = _VkDestroyObjectTableNVX

        {-# INLINE vkProcSymbol #-}
        unwrapVkProcPtr = unwrapVkDestroyObjectTableNVX

        {-# INLINE unwrapVkProcPtr #-}
        unwrapVkProcPtrSafe = unwrapVkDestroyObjectTableNVXSafe

        {-# INLINE unwrapVkProcPtrSafe #-}

pattern VkRegisterObjectsNVX :: CString

pattern VkRegisterObjectsNVX <- (is_VkRegisterObjectsNVX -> True)
  where VkRegisterObjectsNVX = _VkRegisterObjectsNVX

{-# INLINE _VkRegisterObjectsNVX #-}

_VkRegisterObjectsNVX :: CString
_VkRegisterObjectsNVX = Ptr "vkRegisterObjectsNVX\NUL"#

{-# INLINE is_VkRegisterObjectsNVX #-}

is_VkRegisterObjectsNVX :: CString -> Bool
is_VkRegisterObjectsNVX
  = (EQ ==) . cmpCStrings _VkRegisterObjectsNVX

type VkRegisterObjectsNVX = "vkRegisterObjectsNVX"

-- | Success codes: 'VK_SUCCESS'.
--
--   Error codes: 'VK_ERROR_OUT_OF_HOST_MEMORY', 'VK_ERROR_OUT_OF_DEVICE_MEMORY'.
--
--   > VkResult vkRegisterObjectsNVX
--   >     ( VkDevice device
--   >     , VkObjectTableNVX objectTable
--   >     , uint32_t objectCount
--   >     , const VkObjectTableEntryNVX* const*    ppObjectTableEntries
--   >     , const uint32_t* pObjectIndices
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/html/vkspec.html#vkRegisterObjectsNVX vkRegisterObjectsNVX registry at www.khronos.org>
type HS_vkRegisterObjectsNVX =
     VkDevice -- ^ device
              ->
       VkObjectTableNVX -- ^ objectTable
                        ->
         Word32 -- ^ objectCount
                ->
           Ptr (Ptr VkObjectTableEntryNVX) -- ^ ppObjectTableEntries
                                           -> Ptr Word32 -- ^ pObjectIndices
                                                         -> IO VkResult

type PFN_vkRegisterObjectsNVX = FunPtr HS_vkRegisterObjectsNVX

foreign import ccall unsafe "dynamic" unwrapVkRegisterObjectsNVX ::
               PFN_vkRegisterObjectsNVX -> HS_vkRegisterObjectsNVX

foreign import ccall safe "dynamic" unwrapVkRegisterObjectsNVXSafe
               :: PFN_vkRegisterObjectsNVX -> HS_vkRegisterObjectsNVX

instance VulkanProc "vkRegisterObjectsNVX" where
        type VkProcType "vkRegisterObjectsNVX" = HS_vkRegisterObjectsNVX
        vkProcSymbol = _VkRegisterObjectsNVX

        {-# INLINE vkProcSymbol #-}
        unwrapVkProcPtr = unwrapVkRegisterObjectsNVX

        {-# INLINE unwrapVkProcPtr #-}
        unwrapVkProcPtrSafe = unwrapVkRegisterObjectsNVXSafe

        {-# INLINE unwrapVkProcPtrSafe #-}

pattern VkUnregisterObjectsNVX :: CString

pattern VkUnregisterObjectsNVX <-
        (is_VkUnregisterObjectsNVX -> True)
  where VkUnregisterObjectsNVX = _VkUnregisterObjectsNVX

{-# INLINE _VkUnregisterObjectsNVX #-}

_VkUnregisterObjectsNVX :: CString
_VkUnregisterObjectsNVX = Ptr "vkUnregisterObjectsNVX\NUL"#

{-# INLINE is_VkUnregisterObjectsNVX #-}

is_VkUnregisterObjectsNVX :: CString -> Bool
is_VkUnregisterObjectsNVX
  = (EQ ==) . cmpCStrings _VkUnregisterObjectsNVX

type VkUnregisterObjectsNVX = "vkUnregisterObjectsNVX"

-- | Success codes: 'VK_SUCCESS'.
--
--   Error codes: 'VK_ERROR_OUT_OF_HOST_MEMORY', 'VK_ERROR_OUT_OF_DEVICE_MEMORY'.
--
--   > VkResult vkUnregisterObjectsNVX
--   >     ( VkDevice device
--   >     , VkObjectTableNVX objectTable
--   >     , uint32_t objectCount
--   >     , const VkObjectEntryTypeNVX* pObjectEntryTypes
--   >     , const uint32_t* pObjectIndices
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/html/vkspec.html#vkUnregisterObjectsNVX vkUnregisterObjectsNVX registry at www.khronos.org>
type HS_vkUnregisterObjectsNVX =
     VkDevice -- ^ device
              ->
       VkObjectTableNVX -- ^ objectTable
                        ->
         Word32 -- ^ objectCount
                -> Ptr VkObjectEntryTypeNVX -- ^ pObjectEntryTypes
                                            -> Ptr Word32 -- ^ pObjectIndices
                                                          -> IO VkResult

type PFN_vkUnregisterObjectsNVX = FunPtr HS_vkUnregisterObjectsNVX

foreign import ccall unsafe "dynamic" unwrapVkUnregisterObjectsNVX
               :: PFN_vkUnregisterObjectsNVX -> HS_vkUnregisterObjectsNVX

foreign import ccall safe "dynamic"
               unwrapVkUnregisterObjectsNVXSafe ::
               PFN_vkUnregisterObjectsNVX -> HS_vkUnregisterObjectsNVX

instance VulkanProc "vkUnregisterObjectsNVX" where
        type VkProcType "vkUnregisterObjectsNVX" =
             HS_vkUnregisterObjectsNVX
        vkProcSymbol = _VkUnregisterObjectsNVX

        {-# INLINE vkProcSymbol #-}
        unwrapVkProcPtr = unwrapVkUnregisterObjectsNVX

        {-# INLINE unwrapVkProcPtr #-}
        unwrapVkProcPtrSafe = unwrapVkUnregisterObjectsNVXSafe

        {-# INLINE unwrapVkProcPtrSafe #-}

pattern VkGetPhysicalDeviceGeneratedCommandsPropertiesNVX ::
        CString

pattern VkGetPhysicalDeviceGeneratedCommandsPropertiesNVX <-
        (is_VkGetPhysicalDeviceGeneratedCommandsPropertiesNVX -> True)
  where VkGetPhysicalDeviceGeneratedCommandsPropertiesNVX
          = _VkGetPhysicalDeviceGeneratedCommandsPropertiesNVX

{-# INLINE _VkGetPhysicalDeviceGeneratedCommandsPropertiesNVX #-}

_VkGetPhysicalDeviceGeneratedCommandsPropertiesNVX :: CString
_VkGetPhysicalDeviceGeneratedCommandsPropertiesNVX
  = Ptr "vkGetPhysicalDeviceGeneratedCommandsPropertiesNVX\NUL"#

{-# INLINE is_VkGetPhysicalDeviceGeneratedCommandsPropertiesNVX #-}

is_VkGetPhysicalDeviceGeneratedCommandsPropertiesNVX ::
                                                     CString -> Bool
is_VkGetPhysicalDeviceGeneratedCommandsPropertiesNVX
  = (EQ ==) .
      cmpCStrings _VkGetPhysicalDeviceGeneratedCommandsPropertiesNVX

type VkGetPhysicalDeviceGeneratedCommandsPropertiesNVX =
     "vkGetPhysicalDeviceGeneratedCommandsPropertiesNVX"

-- | > void vkGetPhysicalDeviceGeneratedCommandsPropertiesNVX
--   >     ( VkPhysicalDevice physicalDevice
--   >     , VkDeviceGeneratedCommandsFeaturesNVX* pFeatures
--   >     , VkDeviceGeneratedCommandsLimitsNVX* pLimits
--   >     )
--
--   <https://www.khronos.org/registry/vulkan/specs/1.1-extensions/html/vkspec.html#vkGetPhysicalDeviceGeneratedCommandsPropertiesNVX vkGetPhysicalDeviceGeneratedCommandsPropertiesNVX registry at www.khronos.org>
type HS_vkGetPhysicalDeviceGeneratedCommandsPropertiesNVX =
     VkPhysicalDevice -- ^ physicalDevice
                      ->
       Ptr VkDeviceGeneratedCommandsFeaturesNVX -- ^ pFeatures
                                                ->
         Ptr VkDeviceGeneratedCommandsLimitsNVX -- ^ pLimits
                                                -> IO ()

type PFN_vkGetPhysicalDeviceGeneratedCommandsPropertiesNVX =
     FunPtr HS_vkGetPhysicalDeviceGeneratedCommandsPropertiesNVX

foreign import ccall unsafe "dynamic"
               unwrapVkGetPhysicalDeviceGeneratedCommandsPropertiesNVX ::
               PFN_vkGetPhysicalDeviceGeneratedCommandsPropertiesNVX ->
                 HS_vkGetPhysicalDeviceGeneratedCommandsPropertiesNVX

foreign import ccall safe "dynamic"
               unwrapVkGetPhysicalDeviceGeneratedCommandsPropertiesNVXSafe ::
               PFN_vkGetPhysicalDeviceGeneratedCommandsPropertiesNVX ->
                 HS_vkGetPhysicalDeviceGeneratedCommandsPropertiesNVX

instance VulkanProc
           "vkGetPhysicalDeviceGeneratedCommandsPropertiesNVX"
         where
        type VkProcType "vkGetPhysicalDeviceGeneratedCommandsPropertiesNVX"
             = HS_vkGetPhysicalDeviceGeneratedCommandsPropertiesNVX
        vkProcSymbol = _VkGetPhysicalDeviceGeneratedCommandsPropertiesNVX

        {-# INLINE vkProcSymbol #-}
        unwrapVkProcPtr
          = unwrapVkGetPhysicalDeviceGeneratedCommandsPropertiesNVX

        {-# INLINE unwrapVkProcPtr #-}
        unwrapVkProcPtrSafe
          = unwrapVkGetPhysicalDeviceGeneratedCommandsPropertiesNVXSafe

        {-# INLINE unwrapVkProcPtrSafe #-}

pattern VK_NVX_DEVICE_GENERATED_COMMANDS_SPEC_VERSION ::
        (Num a, Eq a) => a

pattern VK_NVX_DEVICE_GENERATED_COMMANDS_SPEC_VERSION = 3

type VK_NVX_DEVICE_GENERATED_COMMANDS_SPEC_VERSION = 3

pattern VK_NVX_DEVICE_GENERATED_COMMANDS_EXTENSION_NAME :: CString

pattern VK_NVX_DEVICE_GENERATED_COMMANDS_EXTENSION_NAME <-
        (is_VK_NVX_DEVICE_GENERATED_COMMANDS_EXTENSION_NAME -> True)
  where VK_NVX_DEVICE_GENERATED_COMMANDS_EXTENSION_NAME
          = _VK_NVX_DEVICE_GENERATED_COMMANDS_EXTENSION_NAME

{-# INLINE _VK_NVX_DEVICE_GENERATED_COMMANDS_EXTENSION_NAME #-}

_VK_NVX_DEVICE_GENERATED_COMMANDS_EXTENSION_NAME :: CString
_VK_NVX_DEVICE_GENERATED_COMMANDS_EXTENSION_NAME
  = Ptr "VK_NVX_device_generated_commands\NUL"#

{-# INLINE is_VK_NVX_DEVICE_GENERATED_COMMANDS_EXTENSION_NAME #-}

is_VK_NVX_DEVICE_GENERATED_COMMANDS_EXTENSION_NAME ::
                                                   CString -> Bool
is_VK_NVX_DEVICE_GENERATED_COMMANDS_EXTENSION_NAME
  = (EQ ==) .
      cmpCStrings _VK_NVX_DEVICE_GENERATED_COMMANDS_EXTENSION_NAME

type VK_NVX_DEVICE_GENERATED_COMMANDS_EXTENSION_NAME =
     "VK_NVX_device_generated_commands"

pattern VK_STRUCTURE_TYPE_OBJECT_TABLE_CREATE_INFO_NVX ::
        VkStructureType

pattern VK_STRUCTURE_TYPE_OBJECT_TABLE_CREATE_INFO_NVX =
        VkStructureType 1000086000

pattern VK_STRUCTURE_TYPE_INDIRECT_COMMANDS_LAYOUT_CREATE_INFO_NVX
        :: VkStructureType

pattern VK_STRUCTURE_TYPE_INDIRECT_COMMANDS_LAYOUT_CREATE_INFO_NVX
        = VkStructureType 1000086001

pattern VK_STRUCTURE_TYPE_CMD_PROCESS_COMMANDS_INFO_NVX ::
        VkStructureType

pattern VK_STRUCTURE_TYPE_CMD_PROCESS_COMMANDS_INFO_NVX =
        VkStructureType 1000086002

pattern VK_STRUCTURE_TYPE_CMD_RESERVE_SPACE_FOR_COMMANDS_INFO_NVX
        :: VkStructureType

pattern VK_STRUCTURE_TYPE_CMD_RESERVE_SPACE_FOR_COMMANDS_INFO_NVX =
        VkStructureType 1000086003

pattern VK_STRUCTURE_TYPE_DEVICE_GENERATED_COMMANDS_LIMITS_NVX ::
        VkStructureType

pattern VK_STRUCTURE_TYPE_DEVICE_GENERATED_COMMANDS_LIMITS_NVX =
        VkStructureType 1000086004

pattern VK_STRUCTURE_TYPE_DEVICE_GENERATED_COMMANDS_FEATURES_NVX ::
        VkStructureType

pattern VK_STRUCTURE_TYPE_DEVICE_GENERATED_COMMANDS_FEATURES_NVX =
        VkStructureType 1000086005

-- | bitpos = @17@
pattern VK_PIPELINE_STAGE_COMMAND_PROCESS_BIT_NVX ::
        VkPipelineStageFlagBits

pattern VK_PIPELINE_STAGE_COMMAND_PROCESS_BIT_NVX =
        VkPipelineStageFlagBits 131072

-- | bitpos = @17@
pattern VK_ACCESS_COMMAND_PROCESS_READ_BIT_NVX :: VkAccessFlagBits

pattern VK_ACCESS_COMMAND_PROCESS_READ_BIT_NVX =
        VkAccessFlagBits 131072

-- | bitpos = @18@
pattern VK_ACCESS_COMMAND_PROCESS_WRITE_BIT_NVX :: VkAccessFlagBits

pattern VK_ACCESS_COMMAND_PROCESS_WRITE_BIT_NVX =
        VkAccessFlagBits 262144

-- | VkobjectTableNVX
pattern VK_OBJECT_TYPE_OBJECT_TABLE_NVX :: VkObjectType

pattern VK_OBJECT_TYPE_OBJECT_TABLE_NVX = VkObjectType 1000086000

-- | VkIndirectCommandsLayoutNVX
pattern VK_OBJECT_TYPE_INDIRECT_COMMANDS_LAYOUT_NVX :: VkObjectType

pattern VK_OBJECT_TYPE_INDIRECT_COMMANDS_LAYOUT_NVX =
        VkObjectType 1000086001
