prompt() {
    PS1="$(powerline-rs --shell zsh $?)"
}
precmd_functions+=(prompt)
