# 
# brew install llvm                                   1 
# ==> Downloading https://homebrew.bintray.com/bottles/llvm-10.0.1_1.catalina.bott
# ######################################################################## 100.0%
# ==> Pouring llvm-10.0.1_1.catalina.bottle.tar.gz
# ==> Caveats
# To use the bundled libc++ please add the following LDFLAGS:
#  LDFLAGS="-L/usr/local/opt/llvm/lib -Wl,-rpath,/usr/local/opt/llvm/lib"
#
# llvm is keg-only, which means it was not symlinked into /usr/local,
# because macOS already provides this software and installing another version in
# parallel can cause all kinds of trouble.
#
# If you need to have llvm first in your PATH run:
#   echo 'export PATH="/usr/local/opt/llvm/bin:$PATH"' >> ~/.zshrc
#
# For compilers to find llvm you may need to set:
#   export LDFLAGS="-L/usr/local/opt/llvm/lib"
#   export CPPFLAGS="-I/usr/local/opt/llvm/include"
# 
# ==> Summary
# 🍺  /usr/local/Cellar/llvm/10.0.1_1: 7,029 files, 1GB
#

function llvm (){
    export PATH="/usr/local/opt/llvm/bin:$PATH"
    export LDFLAGS="-L/usr/local/opt/llvm/lib"
    export CPPFLAGS="-I/usr/local/opt/llvm/include"
    unset -f llvm
}
