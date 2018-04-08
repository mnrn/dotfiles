##### ##### ##### ##### ##### ##### ##### #####
# @file .zshenv
##### ##### ##### ##### ##### ##### ##### ##### 


# Japanese setting.
export LANG=ja_JP.UTF-8

# vim bind.
bindkey -v

# Disable flowcontrol using C-s, C-q.
set noflowcontrol

# Allow the command line stack to be used with C-q.
bindkey '^Q' push-line-or-edit

# Set upper limit value of history.
HISTSIZE=100000
SAVEHIST=100000

# history file.
HISTFILE=~/.zsh_history

# Share history with multiple terminals.
setopt sharehistory

# Enable completion function.
autoload -Uz compinit
compinit

# Use extended glob pattern.
setopt extended_glob

# Do not distinguish uppercase and lowercase letters,
# hyphens and underscores on completion.
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' 'm{a-zA-Z}={A-Za-z}' 'r:[._-]=* r:=* l:|=*'

# Disable compctl.
zstyle ':completion:*' use-compctl false

# Enable cdr command.
autoload -Uz is-at-least
if is-at-least 4.3.11
then
    autoload -Uz chpwd_recent_dirs cdr add-zsh-hook
    add-zsh-hook chpwd chpwd_recent_dirs
    zstyle ':chpwd:*' recent-dirs-max 1000
    zstyle ':chpwd:*' recent-dirs-default true
    zstyle ':completion:*' recent-dirs-insert both
fi

# Enable correct.
setopt correct

# Do not beep.
setopt no_beep

# stack size = 1GB.
# ulimit -s 1048576

# Launch tmux at launch zsh.
[[ -z "$TMUX" && ! -z "$PS1" ]] && tmux

# Path to your oh-my-zsh installation.
export ZSH=/home/n/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)
source $ZSH/oh-my-zsh.sh

# Setup Language in Terminal.
case $TERM in
    linux) LANG=C;;
	xterm-256color)  LANG=C;;
	screen-256color) LANG=C;;
   *)     LANG=ja_JP.UTF-8;;
esac

# Avoid path duplication.
typeset -U path PATH

# History search by peco.
unalias history
function peco-history() {
    local hist="$(history -nr 1 | awk '!a[$0]++' | peco --query "$LBUFFER" | sed 's/\\n/\n/')"
    if [ -n "$hist" ]; then
        BUFFER="$hist"
        CURSOR=$#BUFFER
        zle -R -c
    else
        zle reset-prompt
    fi
}
zle -N peco-history
bindkey '^H' peco-history

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

# powerline
powerline-daemon -q
. ~/.local/lib/python3.6/site-packages/powerline/bindings/zsh/powerline.zsh
