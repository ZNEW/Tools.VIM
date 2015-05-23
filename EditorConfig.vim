
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

" Note, perl automatically sets foldmethod in the syntax file
autocmd Syntax c,cpp,vim,xml,html,xhtml setlocal foldmethod=syntax
autocmd Syntax c,cpp,vim,xml,html,xhtml,perl normal zRt
autocmd BufNewFile,BufRead *.xml setf xml

"Disable beeping & enable visualbell
set noeb vb t_vb= "set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

set encoding=utf-8  " The encoding displayed.
set fileencoding=utf-8  " The encoding written to file.

if has('gui_running')
  set guifont=Inconsolata_for_Powerline:h10    " set fonts for gui vim
  "set transparency=10        " set transparent window
  "call libcallnr("vimtweak.dll", "SetAlpha", 210) 
"  set guioptions=egmrt  " hide the gui menubar
endif

let g:airline_powerline_fonts=1

set nobackup
set nowritebackup

set noeb vb t_vb=

let g:airline_powerline_fonts=1


"set wrap " Enable wrapping
set showcmd		" display incomplete commands
set textwidth=129

"if has('autocmd')
"  au BufRead,BufNewFile *.txt set wm=2 tw=80
"endif


"NERDTree update
function! UpdateNerdTree()
    NERDTreeFind
    wincmd p
endfunction

autocmd TabEnter * call UpdateNerdTree()

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

function! g:EditInNewTab(v)
    if has('gui_running')
        if (has('win32') || has('win64'))
            :tabnew<CR>
            :exec ':e! ' . a:v
        else
            :echo "Pouet"<CR>
        endif
    endif
endfunction


