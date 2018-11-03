"-------------------------------------------------------------------------------
" dein Scripts-----
"-------------------------------------------------------------------------------
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

    " golang
    call dein#add('zchee/deoplete-go', {'build': 'make'})

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
