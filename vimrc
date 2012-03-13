" Pathogen loading
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" Auto-indent activation
set autoindent

" Redefine tabulation
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=8

" File type autodetection
filetype on
filetype plugin indent on

" Max length line
set textwidth=79

" Colored syntax
syntax on

" Global shortkeys
execute 'source ' . $HOME . '/.vim/shortkeys.vim'
