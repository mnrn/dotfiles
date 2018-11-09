#-------------------------------------------------
# basic settings
#-------------------------------------------------
# vim bind.
bindkey -v

# Disable flowcontrol using C-s, C-q.
set noflowcontrol

# Allow the command line stack to be used with C-q.
bindkey '^Q' push-line-or-edit

# Set upper limit value of history.
HISTSIZE=100000
SAVEHIST=100000

# History file.
HISTFILE=~/.zsh_history

# Share history with multiple terminals.
setopt sharehistory

# Enable completion function.
autoload -Uz compinit
compinit

# Use extended glob pattern.
setopt extended_glob

# Do not distinguish uppercase and lowercase letters, hyphens and underscores on completion.
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

# Stack size = 1GB.
# ulimit -s 1048576

# Setup Language in Terminal.
case $TERM in
    linux) LANG=C;;
    xterm-256color)  LANG=ja_JP.UTF-8;;
    screen-256color) LANG=ja_JP.UTF-8;;
   *)     LANG=ja_JP.UTF-8;;
esac
export LC_ALL=$LANG

# Avoid path duplication.
typeset -U path PATH
