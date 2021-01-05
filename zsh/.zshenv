##### ##### ##### ##### ##### ##### ##### #####
# @file .zshenv
##### ##### ##### ##### ##### ##### ##### #####

#-------------------------------------------------
# source files
#-------------------------------------------------
case ${OSTYPE} in
    linux*)
        source ~/dotfiles/zsh/env/linux/options.zsh
        source ~/dotfiles/zsh/env/linux/basiclangs.zsh
        source ~/dotfiles/zsh/env/linux/otherlangs.zsh
        source ~/dotfiles/zsh/env/linux/apis.zsh
        source ~/dotfiles/zsh/env/linux/tools.zsh
        ;;
    darwin*)
        source ~/dotfiles/zsh/env/macosx/brew.zsh
        source ~/dotfiles/zsh/env/macosx/options.zsh
        source ~/dotfiles/zsh/env/macosx/basiclangs.zsh
        source ~/dotfiles/zsh/env/macosx/tools.zsh
        source ~/dotfiles/zsh/env/macosx/db.zsh
        source ~/dotfiles/zsh/env/macosx/llvm.zsh
        source ~/dotfiles/zsh/env/macosx/api.zsh
        ;;
esac
