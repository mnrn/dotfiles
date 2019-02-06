# dotfiles

## Overview

I was exhausted from repeated environmental creation.  
So I decided to upload dotfiles to github.  

There are descriptions about vim and zsh, tmux settings.

## Requirements

- [Git](https://github.com/git/git)
- [pyenv](https://github.com/pyenv/pyenv)
- [Zsh](https://github.com/zsh-users/zsh)
- [tmux](https://github.com/tmux/tmux)
- [Oh-My-Zsh](https://github.com/robbyrussell/oh-my-zsh)
- [Powerline](https://github.com/powerline/powerline)

### Options

- [Ricty(for powerline)](https://www.rs.tus.ac.jp/yyusa/ricty.html)
- [CMake](https://github.com/Kitware/CMake)
- [Neovim](https://github.com/neovim/neovim)
- [peco](https://github.com/peco/peco)
- [exa](https://github.com/ogham/exa)
- [ripgrep](https://github.com/BurntSushi/ripgrep)
- [fd](https://github.com/sharkdp/fd)
- [ccat](https://github.com/jingweno/ccat)
- [colordiff](https://github.com/daveewart/colordiff)
- [Source-highlight](https://www.gnu.org/software/src-highlite/)
- [iStats(mac)](https://github.com/Chris911/iStats)
- [OpenSSL](https://github.com/openssl/openssl)

## Installation

```terminal
git clone https://github.com/mnrn/dotfiles
cd dotfiles
python links.py
```

Neovim symlink can be run like so..

```terminal
python links.py --with-neovim
```
