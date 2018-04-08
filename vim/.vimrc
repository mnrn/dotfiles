"dein Scripts-----
if &compatible
    set nocompatible " Be iMproved
endif

" Required:
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.cache/dein')
    call dein#begin('~/.cache/dein')

    " Let dein manage dein
    " Snippet
    call dein#add('Shougo/deoplete.nvim')
    if !has('nvim')
        call dein#add('roxma/nvim-yarp')
        call dein#add('roxma/vim-hug-neovim-rpc')
    endif
    let g:deoplete#enable_at_startup = 1

    call dein#add('davidhalter/jedi-vim')

	" vim-airline
    call dein#add('vim-airline/vim-airline')
    call dein#add('vim-airline/vim-airline-themes')
	
	" clang
	call dein#add('justmao945/vim-clang')

    " You can specify revision/branch/tag.
    "call dein#add('Shougo/vimshell', { 'rev': '3787e5' })
    call dein#add('Shougo/vimshell')

    " Required:
    call dein#end()
    call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install no installed plugins on startup.
"if dein#check_install()
"    call dein#install()
"endif
"End dein Scripts-----


" Syntax highlight on
syntax on

" Encoding
set encoding=utf-8

" File encoding
set fileencoding=utf-8

" Do not create swap files
set noswapfile

" Do not create backup files
set nowritebackup

" Do not backup 
set nobackup

" Tab space
set tabstop=4

" Indent space
set shiftwidth=4

" Show row number
set number

" Show cursor exists
set ruler

" Show match
set showmatch 

" History
set history=10000

" Indent
set autoindent

" Powerline
set laststatus=2
set showtabline=2
set noshowmode
set t_Co=256
let g:airline_powerline_fonts = 1
"let g:airline_theme = 'tomorrow'

" Rust
let g:rustfmt_autosave = 1
let g:rustfmt_command = '$HOME/.cargo/bin/rustfmt'
set hidden
let g:racer_cmd = '$HOME/.cargo/bin/racer'

" C/C++
let g:clang_c_options = '-std=c11 -Weverything'
let g:clang_cpp_options = '-std=c++1z -stdlib=libc++ -Wall -Wextra'
