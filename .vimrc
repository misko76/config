set ambw=double

syntax on
filetype on
filetype plugin on

imap jj <Esc>

call plug#begin()

Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/AutoComplPop'
Plug 'itchyny/lightline.vim'
Plug 'vim-python/python-syntax'
Plug 'preservim/nerdcommenter'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'vim-autoformat/vim-autoformat'

call plug#end()

let g:solarized_termcolors=256
colorscheme gruvbox
set background=dark

let g:lightline = {
            \ 'colorscheme': 'solarized',
            \ 'active': { 'left': [[ 'mode' ], [ 'filename' ]], 'right': [[ 'lineinfo' ], [ 'percent' ], [ 'filetype' ]] },
            \ 'component': { 'lineinfo': '  %l/%L  ' }
            \ }

let NERDTreeQuitOnOpen=1
let g:NERDTreeMinimalUI=1
nmap <Tab> :NERDTreeToggle<CR>

let g:UltiSnipsJumpBackwardTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-k>"

nmap <C-_> <Plug>NERDCommenterToggle
vmap <C-_> <Plug>NERDCommenterToggle<CR>gv

set laststatus=2
set nocompatible
set fileformat=unix
set encoding=utf-8
set number
set noswapfile
set scrolloff=8
set nowrap
set showmatch
set wildmenu
set noerrorbells
set hlsearch
set incsearch
set smartcase
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
set backspace=indent,eol,start
set mouse=a

let g:python_highlight_all = 1
let g:python3_host_prog="/usr/bin/python3"