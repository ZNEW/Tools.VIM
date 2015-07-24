
map <F2> :echo 'Current time is ' . strftime('%c')<CR>

" Key mapping {{{

"Suppresion de la fin de la ligne
nnoremap D d$

"Begin of line
nnoremap H ^i

"End of file
"nnoremap J gg
nnoremap J 10j
vnoremap J 10j

"End of file
"nnoremap K Gzzzv
nnoremap K 10k
vnoremap K 10k

"End of line
nnoremap L g_A

"centered search
nnoremap n nzzzv
"wincmd p
nnoremap N Nzzzv

" easier formatting of paragraphs
vmap Q gq
nmap Q gqap

vnoremap < <gv " better indentation
vnoremap > >gv " better indentation

" make ` execute the contents of the a register
nnoremap ` @a
vnoremap ` :normal @a<CR>

"Do not move on *
nnoremap * *<c-o>

" backspace in Visual mode deletes selection
vnoremap <BS> d

map <F5> :call UpdateTab()<CR>
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
" Trace back <C-o>

" }}}

" CTRL - key + CTRL - key {{{
" buffer switch

imap <C-b><C-l> <esc>:bn<CR>
map <C-b><C-l> <esc>:bn<CR>

imap <C-b><C-b> <esc>:bp<CR>
map <C-b><C-b> <esc>:bp<CR>

imap <C-b><C-h> <esc>:bp<CR>
map <C-b><C-h> <esc>:bp<CR>

map <C-b><C-c> <Esc>:exec ":bp\|bd #"<CR>

imap <C-r><C-c><C-p> <Esc>:call CreateProperty()<CR>a
imap <C-r><C-c><C-p><C-s> <Esc>:call CreateProperty("string")<CR>a
imap <C-r><C-c><C-p><C-i> <Esc>:call CreateProperty("int")<CR>a
vmap <C-r><C-e><C-m> :call ExtractMethod()<CR>

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


