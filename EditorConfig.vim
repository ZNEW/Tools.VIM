
" Better copy & paste
" When you want to paste large blocks of code into vim, press F2 before you
" paste. At the bottom you should see ``-- INSERT (paste) --``.
set pastetoggle=<F2>
set clipboard=unnamed

filetype off
filetype plugin indent on

" Real programmers don't use TABs but spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

" Disable stupid backup and swap files - they trigger too many events
" for file system watchers
set nobackup
set nowritebackup
set noswapfile
"set nohidden " Unload hidden

set nocompatible
"set nocp

" Useful settings
set history=700
set undolevels=700

set wrap " Enable wrapping

set ttyfast
set backspace=indent,eol,start
set list
set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮
set matchtime=3
set showbreak=↪
set splitbelow
set splitright
set autowrite
set autoread
set title
set linebreak

" Note, perl automatically sets foldmethod in the syntax file
autocmd Syntax c,cpp,vim,xml,html,xhtml setlocal foldmethod=syntax
autocmd Syntax c,cpp,vim,xml,html,xhtml,perl normal zRt

"Disable beeping & enable visualbell
set noeb vb t_vb= "set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

set encoding=utf-8  " The encoding displayed.
set fileencoding=utf-8  " The encoding written to file.

if has('gui_running')
  set guifont=Inconsolata_for_Powerline:h12    " set fonts for gui vim
  "set transparency=10        " set transparent window
  "call libcallnr("vimtweak.dll", "SetAlpha", 210) 
"  set guioptions=egmrt  " hide the gui menubar
endif

let g:airline_powerline_fonts=1
