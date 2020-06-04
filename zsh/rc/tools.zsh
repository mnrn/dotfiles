#-------------------------------------------------
# aliases
#-------------------------------------------------
if [[ -x `which gsed` ]]; then
    alias sed='gsed'
fi

if [[ -x `which tmux` ]]; then
    alias tmux='tmux -u'
fi

if [[ -x `which greadlink` ]]; then
    alias readlink='greadlink'
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
