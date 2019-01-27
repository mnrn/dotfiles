# powerline
if [[ -f ~/.local/lib/python3.6/site-packages/powerline/bindings/zsh/powerline.zsh ]]; then
    powerline-daemon -q
    . ~/.local/lib/python3.6/site-packages/powerline/bindings/zsh/powerline.zsh
fi