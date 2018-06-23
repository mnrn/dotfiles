##### ##### ##### ##### ##### ##### ##### #####
# @file .zshenv
##### ##### ##### ##### ##### ##### ##### ##### 

#-------------------------------------------------
# source files
#-------------------------------------------------
case ${OSTYPE} in
    linux*)
        source ~/dotfiles/zsh/env/linux/options.zshenv
        source ~/dotfiles/zsh/env/linux/basiclangs.zshenv
        source ~/dotfiles/zsh/env/linux/otherlangs.zshenv
        source ~/dotfiles/zsh/env/linux/apis.zshenv
        source ~/dotfiles/zsh/env/linux/tools.zshenv
        ;;
    darwin*)
	    source ~/dotfiles/zsh/env/macosx/options.zshenv
        source ~/dotfiles/zsh/env/macosx/basiclangs.zshenv
	    source ~/dotfiles/zsh/env/macosx/tools.zshenv
        ;;
esac
