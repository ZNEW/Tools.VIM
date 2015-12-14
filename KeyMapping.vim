
" Key mapping {{{

"Suppresion de la fin de la ligne
nnoremap D d$

"Begin of line
nnoremap H ^i

"End of file
"nnoremap J gg
"nnoremap J 10j
"vnoremap J 10j

"End of file
"nnoremap K Gzzzv
"nnoremap K 10k
"vnoremap K 10k

"End of line
nnoremap L g_A

"centered search
"nnoremap n nzzzv
"wincmd p
"nnoremap N Nzzzv

"centered scrolling
"nnoremap j jzz
"nnoremap k kzz
"nnoremap <Down> jzz
"nnoremap <Up> kzz

" easier formatting of paragraphs
vmap Q gq
nmap Q gqap

vnoremap < <gv " better indentation
vnoremap > >gv " better indentation

" make ` execute the contents of the a register
"nnoremap ` @a
"vnoremap ` :normal @a<CR>
" mark access
"nnoremap ' `

"Do not move on *
nnoremap * *<c-o>

" backspace in Visual mode deletes selection
vnoremap <BS> d

" Fxx keys

map <F2> :echo 'Current time is ' . strftime('%c')<CR>
map <F3> :execute ":noautocmd vimgrep /\\\<" . expand("<cword>") . "\\\>/j **/*.cs" <Bar> cw<CR>
map <F4> :execute "lcd %:p:h"

map <F5> :call UpdateTab()<CR>
map <F7> :cprev<CR>
map <F8> :cnext<CR>

" F8 : [PLUGIN] TList
map <silent> <C-F8> :execute ToggleTList()<cr>
"imap <F8> <Esc><F8>
"vmap <F8> <Esc><F8>

" Shift - Fxx keys

":map <S-F2> :call OpenCSharpFileAndUpdatePath()<CR>
map <S-F3> :call UpdatePath()<CR>

" CTRL + Fxx

" build tags of your own project with Ctrl-F12
map <C-F3> :call OpenCSharpFile()<CR>
map <C-F12> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q .<CR>


" }}}

" Leader mapping {{{
" Leader key
let mapleader = ","

" leader + key
nnoremap <leader>e :call g:EditInNewTab('c:\users\F8296572\_vimrc')<CR>
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>
noremap <Leader>q :quit<CR>
noremap <Leader>Q :qa!<CR>
nnoremap <leader>scs :call g:EditInNewTab('c:\users\F8296572\vimfiles\snippets\cs.snippets')<CR>
nnoremap <leader>uscs :call g:EditInNewTab('c:\users\F8296572\vimfiles\UltiSnips\cs.snippets')<CR>
map <leader>f :call g:findInpuDialogTextInSubFolder()<CR>

" leader + keys
" Diff shortcuts
map <leader>dj ]c
map <leader>dk [c
map <leader>du <esc>:diffupdate<CR>
" }}}

" Tab & key {{{
map <Tab>n <esc>:tabnew<CR>
map <Tab>x <esc>:tabclose<CR>
" }}}

" CTRL - key {{{
"map <c-h> <c-w>h
"map <c-j> <c-w>j
"map <c-k> <c-w>k
"map <c-l> <c-w>l

" Navigate to / follot a tag (<c-i>)
nnoremap <C-t> <C-]>

map <C-h> :call WinMove('h')<cr>
map <C-j> :call WinMove('j')<cr>
map <C-k> :call WinMove('k')<cr>
map <C-l> :call WinMove('l')<cr>

" }}}

" (CTRL - key) * {{{
" buffer switch

imap <C-b><C-l> <esc>:bn<CR>
map <C-b><C-l> <esc>:bn<CR>

imap <C-b><C-b> <esc>:bp<CR>
map <C-b><C-b> <esc>:bp<CR>

imap <C-b><C-h> <esc>:bp<CR>
map <C-b><C-h> <esc>:bp<CR>

map <C-b><C-c> <Esc>:exec ":bp\|bd #"<CR>

" Refactoring
vmap \cp :call <Esc>CreateProperty()<CR>a
imap <C-r><C-c><C-p> <Esc>:call CreateProperty()<CR>a

vmap \cps :call <Esc>CreateProperty("string")<CR>a
imap <C-r><C-c><C-p><C-s> <Esc>:call CreateProperty("string")<CR>a

vmap \cpi :call <Esc>:call CreateProperty("int")<CR>a
imap <C-r><C-c><C-p><C-i> <Esc>:call CreateProperty("int")<CR>a

vmap <C-r><C-e><C-m> :call ExtractMethod()<CR>
vmap \em :call ExtractMethod()<CR>

" Move in insert mode
imap <C-h><C-h> <left>
imap <C-j><C-j> <down>
imap <C-k><C-k> <up>
imap <C-l><C-l> <right>

" }}}

" Shift - Key {{{
map <S-Tab> <esc>:bp<CR>

"Windows resizing
nnoremap <S-left> 5<c-w><
nnoremap <S-right> 5<c-w>>
" }}}


" KeyMapping Macros {{{

" Window movement shortcuts
" move to the window in the direction shown, or create a new window
function! WinMove(key)
    let t:curwin = winnr()
    exec "wincmd ".a:key
    if (t:curwin == winnr())
        if (match(a:key,'[jk]'))
            wincmd v
        else
            wincmd s
        endif
        exec "wincmd ".a:key
    endif
  endfunction


function! EditInNewTab(v)
    if has('gui_running')
        if (has('win32') || has('win64'))
            :tabnew<CR>
            :exec ':e! ' . a:v
        else
            :echo "Pouet"<CR>
        endif
    endif
endfunction

function! g:FindInpuDialogTextInSubFolder()
  if has('gui_running')
    let g:searchedText = inputdialog("Search:")
    :call g:FindInSubFolder(g:searchedText)
  endif
endfunction

function! g:FindInSubFolder(v)
  if has('gui_running')
    :exec ':noautocmd vimgrep /\<' . a:v . '\>/ **/*.cs'
    :copen
    "    :echo a:v
  endif
endfunction

function! UpdatePath() range
  :exec ':set path+='.expand('%:p:h')."/**"
endfunction


function! OpenCSharpFile() range
  find <cword>.cs
endfunction


function! ExtractMethod() range
  let name = inputdialog("Name of the new method:")
  '<
  exe "normal! O\<BS>private " . name ."()\<CR>{\<Esc>"
  '>
  exe "normal! oreturn ;\<CR>}\<Esc>k"
  s/return/\/\/ return/ge
  normal! j%
  normal! kf(
  exe "normal! yyPi// = \<Esc>wdwA;\<Esc>"
  normal! ==
  normal! j0w
endfunction


function! CreateProperty(type)
  exe "normal bim_\<Esc>b\"yywiprivate ".a:type." \<Esc>A;\<CR>public ".a:type.
        \ " \<Esc>\"ypb2xea\<CR>{\<Esc>oget\<CR>{\<CR>return " .
        \ "\<Esc>\"ypa;\<CR>}\<CR>set\<CR>{\<CR>\<Tab>\<Esc>\"yPa = value;\<CR>}\<CR>}\<CR>\<Esc>"
  normal! 12k2wi
endfunction

function! CreateProperty()
  exe "normal bim_\<Esc>b\"yyybiprivate \<Esc>A;\<CR>\<Esc>\"ypw\"xyw\<Esc>2xbipublic \<Esc>$a\<CR>{\<Esc>oget\<CR>{\<CR>return \<Esc>\"xpa;\<CR>}\<CR>set\<CR>{\<CR>\<Tab>\<Esc>\"xPa = value;\<CR>}\<CR>}\<CR>\<Esc>"
  normal 12k2wi
endfunction

function! ImplementAbstractClass() range
  exe "normal \<Esc>\"yyw"
  /{
  normal "xy%
  normal %o
  exe "normal! \<Esc>o"
  let name = inputdialog("Name of new method:")
  exe "normal! ipublic class " .name." : \<Esc>\"yp\"xp"
  exe "normal! }O}\<Esc>=="
  normal %v%
  normal! gv
  '<,'>s/abstract/override/g
  normal! gv
  '<,'>s/;/\r{\r}\r/g
  normal! ==
  normal %kdd%k
endfunction



"function! OpenCSharpFileAndUpdatePath() range
"  find <cword>.cs
"  :exec ':set path+='.expand('%:p:h')."/**"
"endfunction

" }}}

