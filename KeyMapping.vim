
map <F2> :echo 'Current time is ' . strftime('%c')<CR>


" Rebind <Leader> key
" I like to have it here becuase it is easier to reach than the default and
" it is next to ``m`` and ``n`` which I use for navigating between tabs.
let mapleader = ","


" Bind nohl
" Removes highlight of your last search
" ``<C>`` stands for ``CTRL`` and therefore ``<C-n>`` stands for ``CTRL+n``
" noremap <C-n> :nohl<CR>
" vnoremap <C-n> :nohl<CR>
" inoremap <C-n> :nohl<CR>


" Quicksave command
" noremap <C-Z> :update<CR>
" vnoremap <C-Z> <C-C>:update<CR>
" inoremap <C-Z> <C-O>:update<CR>

" Fast editing of the .vimrc
map <leader>e :e! ~/.vim_runtime/vimrc<cr>

" Quick quit command
noremap <Leader>q :quit<CR> " Quit current window
noremap <Leader>Q :qa!<CR> " Quit all windows


" bind Ctrl+<movement> keys to move around the windows, instead of using Ctrl+w + <movement>
" Every unnecessary keystroke that can be saved is good for your health :)
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h


" easier moving between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>


" map sort function to a key
vnoremap <Leader>s :sort<CR>


" easier moving of code blocks
" Try to go into visual mode (v), thenselect sevl lines of code here and
" then press ``>`` several times.
vnoremap < <gv " better indentation
vnoremap > >gv " better indentation

" easier formatting of paragraphs
vmap Q gq
nmap Q gqap

"Diff
map <leader>dj ]c
map <leader>dk [c
map <leader>du <esc>:diffupdate<CR>



map <Tab>n <esc>:tabnew<CR>

" make ` execute the contents of the a register
nnoremap ` @a
vnoremap ` :normal @a<CR>



"" map <Leader>p i<Esc>ea()<Esc>
"" map <Leader>c i<Esc>ea{}<Esc>

"nnoremap <C-t> <C-]>
