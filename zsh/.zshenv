##### ##### ##### ##### ##### ##### ##### #####
# @file .zshenv
##### ##### ##### ##### ##### ##### ##### ##### 


# add to path 
export PATH=$PATH:$HOME/bin
export PATH=$PATH:$HOME/include
export PATH=$PATH:$HOME/local/bin
export PATH=$PATH:$HOME/local/include
export PATH=$PATH:$HOME/local/lib

# gcc/clang
export CPLUS_INCLUDE_PATH=$CPLUS_INCLUDE_PATH:$HOME/local/include
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/local/lib

# cmake
export CC=$HOME/local/bin/clang
export CXX=$HOME/local/bin/clang++

# pkg-config
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:$HOME/local/lib/pkgconfig

# pyenv
export PYENV_ROOT=$HOME/.pyenv
export PATH=$PYENV_ROOT/bin:$PATH
eval "$(pyenv init -)"

# golang
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/.go
export PATH=$PATH:$HOME/.go/bin

# rust
export PATH=$PATH:$HOME/.cargo/bin
export RUST_SRC_PATH=$HOME/.multirust/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src

# swift
export PATH=$PATH:$HOME/local/swift/usr/bin

# nim
export PATH=$PATH:$HOME/Nim/bin

# scala
export SCALA_HOME=$HOME/local/scala
export PATH=$PATH:$SCALA_HOME/bin

# powerline and haskell tools
export PATH=$PATH:$HOME/.local/bin

# vulkan
export VULKAN_SDK=$HOME/local/VulkanSDK/1.0.57.0/x86_64
export PATH=$PATH:$VULKAN_SDK/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$VULKAN_SDK/lib
export VK_LAYER_PATH=$VULKAN_SDK/etc/explicit_layer.d

# cuda
export CUDA_HOME=/usr/local/cuda-8.0
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:${CUDA_HOME}/lib64
export PATH=$PATH:${CUDA_HOME}/bin

# openexr
export PATH=$PATH:/usr/include/OpenEXR

# dex2jar
export PATH=$PATH:$HOME/include/dex2jar/dex2jar

# jd-gui
export PATH=$PATH:$HOME/include/jd-gui/jd-gui
