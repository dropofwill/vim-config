" Use Vim settings, not compatible with legacy Vi
set nocompatible
set encoding=utf-8


" Pathogen Vim plugin management setup
execute pathogen#infect()
call pathogen#helptags()
filetype plugin indent on						" Autoindent plugin setup 
let g:user_emmet_install_global = 0 " Emmet plugin setup
autocmd FileType html,css,php EmmetInstall


" Interface settings
syntax on						" Syntax highlighting
"set relativenumber " Line numbers relative to cursor 
set number					" Line numbers 
set numberwidth=5
set showcmd					" Show incomplete commands
set noerrorbells		" No dinging! 
set scrolloff=4			" Pad lines verticaly by 5
set hidden					" Hide buffers instead of yelling at me about it
set cursorline			" Show where my cursor is with a horizontal line
set ruler
set mouse=a					" Enable mouse for all modes, not always available 
set wildmenu				" Tab complete vim commands
set wildmode=longest,list,full
set laststatus=2		" Always show status line



augroup BgHighlight
  autocmd!
  autocmd WinEnter * set cul
  autocmd WinLeave * set nocul
augroup END



" Tab settings
set smarttab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent



" Search/Regex settings
set showmatch
nnoremap <leader><space> :noh<cr> 
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch



" File management
set history=100
set undolevels=1000
set nobackup
set nowritebackup
set noswapfile



" Copy/Paste settings
set copyindent
set pastetoggle=<f2>



" Misc. Settings
set ttyfast
set modelines=0



" Get off my lawn
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>



" Convenience remappings
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
											" Jump to new split with <space>w
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <leader>e <C-w>s<C-w>j
											" Move around splits with ctrl movement keys
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l



" Macro remappings



" Special settings
" Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'
