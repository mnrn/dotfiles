#-------------------------------------------------
# api
#-------------------------------------------------

# android
export PATH=$PATH:$HONE/local/android-studio/bin

# vulkan
export VULKAN_SDK=$HOME/local/VulkanSDK/1.0.57.0/x86_64
export PATH=$PATH:$VULKAN_SDK/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$VULKAN_SDK/lib
export VK_LAYER_PATH=$VULKAN_SDK/etc/explicit_layer.d