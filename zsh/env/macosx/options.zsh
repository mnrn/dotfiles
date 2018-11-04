#-------------------------------------------------
# options
#-------------------------------------------------
# add to path
export PATH=/usr/local/bin:$PATH
export PATH=$PATH:$HOME/bin
export PATH=$PATH:$HOME/include
export PATH=$PATH:$HOME/local/bin
export PATH=$PATH:$HOME/local/include
export PATH=$PATH:$HOME/local/lib

# Homebrew using zsh extension
alias brew="env PATH=${${PATH/~\/\.local\/bin:/}/~\/\.pyenv\/shims:/} brew"
