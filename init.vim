call plug#begin('~/.vim/plugged')
  Plug 'preservim/nerdtree'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'jeffkreeftmeijer/vim-numbertoggle'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-surround'
  Plug 'airblade/vim-gitgutter'
  " Language Support
  Plug 'vim-syntastic/syntastic'
  Plug 'tomlion/vim-solidity'
  Plug 'pangloss/vim-javascript'
  Plug 'bfrg/vim-jq'
  " colour scheme
  Plug 'ParamagicDev/vim-medic_chalk'
call plug#end()

set updatetime=100

colorscheme medic_chalk

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" Change how vim represents characters on the screen
set encoding=utf-8

" Set the encoding of files written
set fileencoding=utf-8

" Line numbers, combined with the vim-numbertoggle plugin
set number relativenumber

" Use nerd tree if vim is opened on a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
" Close vim if nerdtree is the only thing that's open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Sort out Tabs
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab

" search
set showmatch hlsearch
filetype plugin on
set nocompatible
syntax on
set backspace=indent,eol,start 

"
" keybindings
"

nnoremap <C-n> :NERDTreeToggle<CR>

" convenience for switching tabs
nnoremap <C-m> :bn<CR>

" hide search results with ,<space>
nnoremap ,<space> :noh<CR>

