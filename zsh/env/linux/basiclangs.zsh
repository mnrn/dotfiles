#-------------------------------------------------
# basic languages
#-------------------------------------------------
# gcc/clang
export CPLUS_INCLUDE_PATH=$CPLUS_INCLUDE_PATH:$HOME/local/include
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/local/lib

# for cmake
if [ -e /etc/lsb-release ]; then # Ubuntu
    export CC=$HOME/local/bin/clang
    export CXX=$HOME/local/bin/clang++
elif [ -f /etc/centos-release]; then # CentOS
    export CC=$HOME/local/bin/g
    export CXX=$HOME/local/bin/g++
fi

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
