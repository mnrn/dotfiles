# powerline
# powerline
if [[ -f ~/.local/lib/python/site-packages/powerline/bindings/zsh/powerline.zsh ]]; then
    powerline-daemon -q
    . ~/.local/lib/python/site-packages/powerline/bindings/zsh/powerline.zsh
fi
