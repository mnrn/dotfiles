#-------------------------------------------------
# basic languages
#-------------------------------------------------
# clang
export PATH=/usr/local/opt/llvm/bin:$PATH
#export LDFLAGS=-L/usr/local/opt/llvm/lib
#export CPPFLAGS=-I/usr/local/opt/llvm/include/c++/v1
#export CPLUS_INCLUDE_PATH=$CPLUS_INCLUDE_PATH:/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include
#export CPLUS_INCLUDE_PATH=$CPLUS_INCLUDE_PATh:/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk

# gcc/clang
export CPLUS_INCLUDE_PATH=$CPLUS_INCLUDE_PATH:$HOME/local/include
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/local/lib

# cmake
export CC=/usr/bin/gcc
export CXX=/usr/bin/g++

# pyenv
export PYENV_ROOT=$HOME/.pyenv
export PATH=$PYENV_ROOT/shims:$PATH
eval "$(pyenv init -)"

# golang
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/.go
export PATH=$PATH:$HOME/.go/bin
export GOCACHE=$GOPATH/caches/build
export CGO_ENABLED=0
export CGO_CPPFLAGS=$CPPFLAGS
export CGO_LDFLAGS="$LDFLAGS -g -O2"

# rust
export PATH=$PATH:$HOME/.cargo/bin
export RUST_SRC_PATH=$HOME/.multirust/toolchains/stable-x86_64-apple-darwin/lib/rustlib/src/rust/src
