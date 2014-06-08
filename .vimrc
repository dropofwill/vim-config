set nocompatible

execute pathogen#infect()
call pathogen#helptags()

syntax on
filetype plugin indent on

set smarttab
set tabstop=3
set shiftwidth=3
set softtabstop=3
set autoindent

set showmatch
set showcmd
set copyindent

set history=1000
set undolevels=1000
set noerrorbells

set nobackup
set modelines=0

set wildmode=longest,list,full
set wildmenu

let g:user_emmet_install_global = 0
autocmd FileType html,css,php EmmetInstall

set pastetoggle=<f2>

set relativenumber 
set number 
set encoding=utf-8

" Pad lines verticaly by 5
set scrolloff=5
" Hide buffers instead of yelling at me about it
set hidden
set cursorline
set mouse=a 

" <space><space> to clear searches
nnoremap <leader><space> :noh<cr>
" Sane regex settings 
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch

" Jump around brackets with tab as well
nnoremap <tab> %
vnoremap <tab> %
" Move screen lines not actual ones
nnoremap j gj
nnoremap k gk
" Set my leader to space except for x,i modes
map <Space> <Leader>
noremap <Leader>x i
" ; for faster commands
nnoremap ; :

" Jump to new vertical split with <space>w
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <leader>e <C-w>s<C-w>j
" Move around splits with ctrl movement keys
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
