#-------------------------------------------------
# peco functions
#-------------------------------------------------
# History search by peco.
unalias history
function peco-history() {
    local hist="$(history -nr 1 | awk '!a[$0]++' | peco --prompt="history >" --query "$LBUFFER" | sed 's/\\n/\n/')"
    if [ -n "$hist" ]; then
        BUFFER="$hist"
        CURSOR=$#BUFFER
        zle -R -c
    else
        zle reset-prompt
    fi
}
zle -N peco-history
bindkey '^h' peco-history

# Directory movement remaining in history by peco & cdr.
function peco-cdr() {
    local dst="$(cdr -l | sed 's/^[0-9]\+ \+//' | peco --prompt="cdr >" --query "$LBUFFER")"
    if [ -n "$dst" ]; then
        BUFFER="cd $dst"
        zle accept-line
    else
        zle reset-prompt
    fi
}
zle -N peco-cdr
bindkey '^x' peco-cdr

# Select ssh Host from ~/.ssh/config
function peco-ssh() {
    local host="$(grep '^Host ' ~/.ssh/config | awk '{ print $2 }' | peco --prompt="ssh >" --query "$LBUFFER")"
    if [ -n "$host" ]; then
        BUFFER="ssh $host"
        zle accept-line
    else
        zle reset-prompt
    fi
}
zle -N peco-ssh
bindkey '^\' peco-ssh

# cd ghq
function peco-cd-ghq() {
    local selected_dir="$(ghq list -p | peco --prompt="cd-ghq >" --query "$LBUFFER")"
    if [ -n "$selected_dir" ]; then
        BUFFER="cd -P $selected_dir"
        zle accept-line
    else
        zle reset-prompt
    fi
}
zle -N peco-cd-ghq
bindkey '^g' peco-cd-ghq
