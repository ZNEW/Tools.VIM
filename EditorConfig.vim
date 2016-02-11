
au FileType {vim,javascript} setlocal foldmethod=marker
au FileType {cs,c} setlocal foldmethod=indent

set foldmethod=indent
set foldlevel=2
set foldlevelstart=20

au BufEnter *.txt set so=15
au BufEnter *.cs set so=15
au BufEnter *.vim* set so=15

au BufLeave *.txt set so=1
au BufLeave *.cs set so=1
au BufLeave *.vim* set so=1

" Tests
" A chercher sur le web
au BufRead,BufNewFile *.cs      set filetype=cs
au BufRead,BufNewFile *.vim      set filetype=vim
"autocmd FileType cs im :<CR> :<CR><TAB>

" Better copy & paste
" When you want to paste large blocks of code into vim, press F2 before you
" paste. At the bottom you should see ``-- INSERT (paste) --``.
set pastetoggle=<F2>
set clipboard=unnamed


" Real programmers don't use TABs but spaces
set tabstop=2
set softtabstop=2
set shiftwidth=2
set shiftround
set expandtab

"Search
set incsearch		" do incremental searching
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

set nocompatible
"set nocp

" Useful settings
set history=700
set undolevels=700

set ttyfast
set backspace=indent,eol,start
set list
set listchars=tab:\|\ ,eol:¬,extends:\|,precedes:\|
set matchtime=3
set showbreak=↪
set splitbelow
set splitright
set autowrite
set autoread
set title
set linebreak

"set so=15

"Disable beeping & enable visualbell
set noeb vb t_vb= "set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

set encoding=utf-8  " The encoding displayed.
set fileencoding=utf-8  " The encoding written to file.

"set nobackup
"set nowritebackup

:let g:airline_powerline_fonts=1


"set wrap " Enable wrapping
set showcmd		" display incomplete commands
set textwidth=129

"if has('autocmd')
"  au BufRead,BufNewFile *.txt set wm=2 tw=80
"endif


set lazyredraw
set nolazyredraw " don't redraw while executing macros
set magic " Set magic on, for regex


" KeyMapping Macros {{{

"Tab & Syntax update
let g:mySyntax = 0
function! UpdateTab()
    call UpdateNerdTree()
    if g:mySyntax == 0
        :syntax off<CR>
    endif
    if g:mySyntax == 1
        :syntax on<CR>
    endif
    let g:mySyntax = g:mySyntax + 1
    if g:mySyntax >= 2
        let g:mySyntax = 0
    endif
endfunction

" }}}
