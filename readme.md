# dotfiles

[![License: CC0-1.0](https://img.shields.io/badge/License-CC0%201.0-lightgray.svg)](http://creativecommons.org/publicdomain/zero/1.0/)
[![Build Status](https://travis-ci.org/mnrn/dotfiles.svg?branch=master)](https://travis-ci.org/mnrn/dotfiles)

## Overview

There are descriptions about vim and zsh, tmux settings.

## Tree

```text:
.
├── LICENSE
├── links.py
├── readme.md
├── tmux
│  ├── common
│  │  ├── basics.conf
│  │  └── plugins.conf
│  ├── linux
│  │  └── options.conf
│  └── macosx
│     └── options.conf
├── tree.txt
├── vim
│  ├── basics.vim
│  ├── dein.vim
│  ├── keymaps.vim
│  ├── langs.vim
│  └── powerline.vim
└── zsh
   ├── env
   │  ├── linux
   │  │  ├── apis.zsh
   │  │  ├── basiclangs.zsh
   │  │  ├── options.zsh
   │  │  ├── otherlangs.zsh
   │  │  └── tools.zsh
   │  └── macosx
   │     ├── basiclangs.zsh
   │     ├── brew.zsh
   │     ├── db.zsh
   │     ├── options.zsh
   │     └── tools.zsh
   └── rc
      ├── basics.zsh
      ├── oh_my_zsh.zsh
      ├── peco.zsh
      ├── powerline.zsh
      ├── tmux.zsh
      ├── tools.zsh
      └── travis.zsh
```


## Requirements

- [Git](https://github.com/git/git)
- [pyenv](https://github.com/pyenv/pyenv)
- [Zsh](https://github.com/zsh-users/zsh)
- [tmux](https://github.com/tmux/tmux)
- [Oh-My-Zsh](https://github.com/robbyrussell/oh-my-zsh)
- [Powerline](https://github.com/powerline/powerline)

### Options

- [Ricty(for powerline)](https://www.rs.tus.ac.jp/yyusa/ricty.html)
- [Neovim](https://github.com/neovim/neovim)
- [peco](https://github.com/peco/peco)
- [ghq](https://github.com/x-motemen/ghq)
- [gnu-sed](https://www.gnu.org/software/sed/)
- [lsd](https://github.com/Peltoche/lsd)
- [ripgrep](https://github.com/BurntSushi/ripgrep)
- [fd](https://github.com/sharkdp/fd)
- [bat](https://github.com/sharkdp/bat)
- [delta](https://github.com/dandavison/delta)
- [Source-highlight](https://www.gnu.org/software/src-highlite/)

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
