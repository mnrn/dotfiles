#-------------------------------------------------
# aliases
#-------------------------------------------------
if [[ -x `which exa` ]]; then
    alias ls='exa -abghHliS --git --color=auto'
fi

if [[ -x `which rg` ]]; then
    alias grep='rg --color=auto'
fi

if [[ -x `which colordiff` ]]; then
    alias diff='colordiff --color=auto'
fi

if [[ -x `which ccat` ]]; then
    alias cat='ccat --color=auto'
fi

if [[ -x `which gsed` ]]; then
    alias sed='gsed'
fi

if [[ -x `which tmux` ]]; then
    alias tmux='tmux -u'
fi


#-------------------------------------------------
# Coloring
#-------------------------------------------------
export LESS='-R'
case ${OSTYPE} in
    linux*)
        export LESSOPEN='| /usr/share/source-highlight/src-hilite-lesspipe.sh %s'
        ;;
    darwin*)
        export LESSOPEN='| /usr/local/bin/src-hilite-lesspipe.sh %s'
        ;;
esac