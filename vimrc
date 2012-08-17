set all&

runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

colorscheme molokai

filetype plugin indent on

let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabLongestEnhanced = 1
let g:syntastic_check_on_open = 1
let mapleader = ","

source $VIMRUNTIME/mswin.vim
behave mswin

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <Leader>h <C-w><
nnoremap <Leader>j <C-w>-
nnoremap <Leader>k <C-w>+
nnoremap <Leader>l <C-w>>
nnoremap <Leader>s :%s/\s\+$//g<CR>

set autoindent
set backspace=eol,indent,start
set cindent
set completeopt=longest,menu,menuone,preview
set copyindent
set cursorline
set encoding=utf-8
set expandtab
set guioptions-=T
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set list
set listchars=tab:▸\ ,eol:¬
set nomodeline
set number
set ruler
set scrolloff=4
set shiftround
set shiftwidth=4
set showmatch
set smartcase
set smarttab
set softtabstop=4
set tabstop=4
set tags=./tags;/
set textwidth=79
set visualbell
set wildmenu
set wildmode=list:longest

syntax on
