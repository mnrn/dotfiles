#-------------------------------------------------
# basic languages
#-------------------------------------------------
# clang
export PATH=/usr/local/opt/llvm/bin:$PATH
export LDFLAGS=-L/usr/local/opt/llvm/lib
export CPPFLAGS=-I/usr/local/opt/llvm/include

# gcc/clang
export CPLUS_INCLUDE_PATH=$CPLUS_INCLUDE_PATH:$HOME/local/include
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/local/lib

# for cmake
export CC=/usr/local/opt/llvm/bin/clang
export CXX=/usr/local/opt/llvm/bin/clang++

# pyenv
export PYENV_ROOT=$HOME/.pyenv
export PATH=$PYENV_ROOT/shims:$PATH
eval "$(pyenv init -)"

# golang
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/.go
export PATH=$PATH:$HOME/.go/bin
export GOCACHE=$GOPATH/caches/build

# rust
export PATH=$PATH:$HOME/.cargo/bin
export RUST_SRC_PATH=$HOME/.multirust/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src
