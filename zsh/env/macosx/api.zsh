#-------------------------------------------------
# api
#-------------------------------------------------

# Vulkan
VULKAN_SDK="$HOME/vulkan-sdk/macOS"
export VULKAN_SDK
PATH="$PATH:$VULKAN_SDK/bin"
export PATH
DYLD_LIBRARY_PATH="$VULKAN_SDK/lib:${DYLD_LIBRARY_PATH:-}"
export DYLD_LIBRARY_PATH
VK_LAYER_PATH="$VULKAN_SDK/share/vulkan/explicit_layer.d"
export VK_LAYER_PATH
VK_ICD_FILENAMES="$VULKAN_SDK/share/vulkan/icd.d/MoltenVK_icd.json"
export VK_ICD_FILENAMES
export VK_INSTANCE_LAYERS=VK_LAYER_LUNARG_api_dump:VK_LAYER_KHRONOS_validation
#export VK_INSTANCE_LAYERS=VK_LAYER_KHRONOS_validation
