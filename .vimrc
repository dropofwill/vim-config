" Use Vim settings, not compatible with legacy Vi
set nocompatible

" Vundle
" set the runtime path to include Vundle and initialize
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" All the plugins
"Plugin 'scrooloose/nerdcommenter'
" Plugin 'tpope/vim-commentary'
Plugin 'tomtom/tcomment_vim'
Plugin 'junegunn/goyo.vim'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'sophacles/vim-processing'
Plugin 'jplaut/vim-arduino-ino'
Plugin 'chriskempson/base16-vim'
Plugin 'slim-template/vim-slim'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'farseer90718/vim-taskwarrior'
Plugin 'vim-ruby/vim-ruby'
" Plugin 'vim-latex/vim-latex'
Plugin 'glts/vim-texlog'
Plugin 'digitaltoad/vim-jade'
Plugin 'mattn/emmet-vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'ton/vim-bufsurf'
Plugin 'majutsushi/tagbar'
"Plugin 'bling/vim-bufferline'
" Plugin 'airblade/vim-gitgutter'
" Plugin 'Valloric/YouCompleteMe'
" Am also using Conque Term, installed manually

" All of your Plugins must be added before the following line
call vundle#end()



" Autoindent plugin setup
filetype off
filetype plugin indent on
" Stopped doing this in lieu of separate files for each language:
"
"autocmd FileType html setlocal shiftwidth=2 tabstop=2
"autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4
"autocmd FileType pde, java setlocal shiftwidth=4 softtabstop=4

" Nice, compact default tab settings
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
" set nowrap
set breakindent
" Let me know when my lines are too damn long
set colorcolumn=80


" Backspace anything in insert mode
set backspace=indent,eol,start
" Set the text encoding to handle utf-8
set encoding=utf-8


"let g:user_emmet_install_global = 0	" Emmet plugin setup
"autocmd FileType html,css,php EmmetInstall
" Treat <li> and <p> tags like the block tags they are
"let g:html_indent_tags = 'li\|p'



" Ariline / Color config
set t_Co=256
let g:airline_powerline_fonts = 1
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_theme="badwolf"
" let g:airline_theme="base16"
colorscheme base16-twilight

" Show tabline for buffers when only one tab is being used
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

let g:airline#extensions#whitespace#trailing_format = 'trail[%s]'
let g:airline#extensions#whitespace#mixed_indent_format = 'mixed[%s]'
let g:airline#extensions#whitespace#symbol = '•'
let g:airline#extensions#whitespace#mixed_indent_algo = 1

let g:syntastic_javascript_jshint_args = "browser:true"
let g:syntastic_ruby_exec = "/Users/willpaul/.rubies/ruby-2.1.3/bin/ruby"

let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

set laststatus=2
set ttimeoutlen=0
set background=dark



" Interface settings
syntax on		        " Syntax highlighting
set relativenumber	" Line numbers relative to cursor
set number		      " But ignore the current line
set numberwidth=3   " How wide the line number column should be by default
set showcmd		      " Show incomplete commands
set noerrorbells	  " No dinging!
set scrolloff=4     " Pad lines vertically by 4
set hidden		      " Hide buffers instead of yelling at me about it
set ruler           " Tells you the coords of the cursor in the status line
set wildmenu	    	" Tab complete vim commands
set wildmode=longest,list,full
" Better tab completion, esp. nice for buffer navigation
set wildchar=<Tab>
set laststatus=2	  " Always show status line
let g:loaded_matchparen=1

" 
set completeopt=longest,menuone
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
  \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'


" In many terminal emulators the mouse works just fine, so I enable it.
if has('mouse')
  set mouse=a
endif



" Show where my cursor is with a horizontal line
set cursorline
" But only in active splits, stopped doing this when I added airline
"augroup BgHighlight
	"autocmd!
	"autocmd WinEnter * set cul
	"autocmd WinLeave * set nocul
"augroup END



" Search/Regex settings
nnoremap <leader><space> :noh<cr>
nnoremap / /\v
vnoremap / /\v
"set ignorecase
"set smartcase
set gdefault    " Regex global by default
set incsearch   " Show matches as you type
set showmatch   " Visually flash matching brackets when typing
set hlsearch    " Highlight all search matches not just the current one
set spell       " Spell checker for Vim!



" File management
" set history=100
set undolevels=1000
"set nobackup
"set nowritebackup
set backupdir=~/.vim/tmp
set directory=~/.vim/tmp
set undodir=~/.vim/tmp
set noswapfile



" Copy/Paste settings
set copyindent
set pastetoggle=<f2>


" Misc. Settings
set ttyfast
set modelines=0


" Make Y work as intended, despite not being y compatible
map Y y$

" Don't overwrite register when pasting over something
xnoremap p pgvy
xnoremap P Pgvy

" Open last Vim command
nnoremap <Right> :<Up>
" Open last search result
nnoremap <Left> /\v<Up>

" Bubble single lines
nnoremap <Up> ddkP
nnoremap <Down> ddp

" Bubble multiple lines
vnoremap <Up> xkP`[V`]
vnoremap <Down> xp`[V`]

" TagBar Toggle support
nmap <Leader>t :TagbarToggle<CR>




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
"nnoremap ; :
" Jump to new split with <space>w
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <leader>e <C-w>s<C-w>j

" Move around splits with ctrl movement keys
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Start zsh, use zv to source a clean zshrc for vim
nnoremap <leader>b :ConqueTerm zsh <CR>
map <leader>n :38sp<CR><C-j><leader>b

" Leader , or . (think < >) for previous/next buffer
map <leader>, :bp<CR>
map <leader>. :bn<CR>
map <leader>< :BufSurfBack<CR>
map <leader>> :BufSurfForward<CR>

inoremap kj <Esc>


map <leader>v :bp<bar>sp<bar>bn<bar>bd<CR>



function! s:goyo_enter()
  " Switch the colorscheme to newsprint.vim when using Goyo no distraction mode
  colorscheme newsprint
  set nocursorline
endfunction

function! s:goyo_leave()
  " Switch back to normal defaults
  colorscheme base16-twilight
  highlight Normal ctermbg=black
  set cursorline
endfunction

autocmd User GoyoEnter nested call <SID>goyo_enter()
autocmd User GoyoLeave nested call <SID>goyo_leave()

command! Trim :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

" Vim Processing Java runner
augroup pde
	autocmd!
	autocmd BufNewFile,BufRead *.pde setlocal filetype=java
	autocmd Filetype java :command! Pj :!processing-java --run --sketch=$(pwd) --output=$(pwd)/tmp --force
	autocmd Filetype java :command! Pjf :!processing-java --present --sketch=$(pwd) --output=$(pwd)/tmp --force
	autocmd Filetype java :command! Pjb :!processing-java --present --sketch=$(pwd) --output=$(pwd)/tmp --force
augroup END


" Why is this not a built-in Vim script function?!
" function! s:get_visual_selection()
"   let [lnum1, col1] = getpos("'<")[1:2]
"   let [lnum2, col2] = getpos("'>")[1:2]
"   let lines = getline(lnum1, lnum2)
"   let lines[-1] = lines[-1][: col2 - (&selection == 'inclusive' ? 1 : 2)]
"   let lines[0] = lines[0][col1 - 1:]
"   return join(lines, "\n")
" endfunction


" function s:find_jshintrc(dir)
"     let l:found = globpath(a:dir, '.jshintrc')
"     if filereadable(l:found)
"         return l:found
"     endif

"     let l:parent = fnamemodify(a:dir, ':h')
"     if l:parent != a:dir
"         return s:find_jshintrc(l:parent)
"     endif

"     return "~/.jshintrc"
" endfunction

" function UpdateJsHintConf()
"     let l:dir = expand('%:p:h')
"     let l:jshintrc = s:find_jshintrc(l:dir)
"     let g:syntastic_javascript_jshint_conf = l:jshintrc
" endfunction

" au BufEnter * call UpdateJsHintConf()


" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
" Also don't do it when the mark is in the first line, that is the default
" position when opening a file.
autocmd BufReadPost *
	\ if line("'\"") > 1 && line("'\"") <= line("$") |
	\   exe "normal! g`\"" |
	\ endif
augroup END


" OCaml Merlin configuration
" requires you've already run `opam install merlin`
let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"

" require you've already run `opam install ocp-indent`
execute ":source " . "/Users/willpaul/.opam/system/share/vim/syntax/ocp-indent.vim"
