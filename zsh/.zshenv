##### ##### ##### ##### ##### ##### ##### #####
# @file .zshenv
##### ##### ##### ##### ##### ##### ##### ##### 

#-------------------------------------------------
# source files
#-------------------------------------------------
case ${OSTYPE} in
    linux*)
        source ~/dotfiles/zsh/env/linux/options
        source ~/dotfiles/zsh/env/linux/basiclangs
        source ~/dotfiles/zsh/env/linux/otherlangs
        source ~/dotfiles/zsh/env/linux/apis
        source ~/dotfiles/zsh/env/linux/tools
        ;;
    darwin*)
        ;;
esac
