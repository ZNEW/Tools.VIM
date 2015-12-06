source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin



":set path=.,./**
":exec ':set path+=' . expand('%:p:h') . '/**'




" Refactoring functions call & shortcuts
"vmap <leader>em :call ExtractMethod()<CR>
"imap <C-c><C-p><C-s> <Esc>:call CreateProperty("string")<CR>a
"imap <C-c><C-p><C-i> <Esc>:call CreateProperty("int")<CR>a

"Create abstract class
"imap <C-c><C-a><C-c> <Esc>bipublic abstract class <Esc>A<CR>{<CR>public abstract void X();<CR>}<Esc>:?X<CR>0fXs
"Create concrete class
"map <C-c><C-c><C-c> :silent! call ImplementAbstractClass()<CR>

"imap <C-c><C-p> <Esc>:call CreateProperty()<CR>a

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
"map <leader>e :e! ~/.vim_runtime/vimrc<cr>
"let g:UserVimFilePath = g:IsWindowsOS ? expand("$HOME/_vimrc") : expand("$HOME/.vim/.vimrc")
"echo g:UserVimFilePath

"map <leader>e :e! c:\users\F8296572\_vimrc<CR>

"" map <Leader>p i<Esc>ea()<Esc>
"" map <Leader>c i<Esc>ea{}<Esc>
"vnoremap <Leader>s :sort<CR>

" http://robots.thoughtbot.com/vim-splits-move-faster-and-more-naturally

"Same in Insert Mode
"inoremap <c-h> <esc>bi
"inoremap <c-l> <esc>ei


"A REGARDER
" Python folding
" mkdir -p ~/.vim/ftplugin
" wget -O ~/.vim/ftplugin/python_editing.vim http://www.vim.org/scripts/download_script.php?src_id=5492
" set nofoldenable

"set foldmethod=manual

"let g:Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
"let TaglistTooPosition='right'
"let g:Tlist_Use_SingleClick=1
 " F8 : [PLUGIN] TList
"    map <silent> <F8> :execute (":TlistToo")<cr>
"    imap <F8> <Esc><F8>
"    vmap <F8> <Esc><F8

"let s:default_path = escape(&path, '\ ') " store default value of 'path'

" Always add the current file's directory to the path and tags list if not
" already there. Add it to the beginning to speed up searches.
"autocmd BufRead *
"      \ let s:tempPath=escape(escape(expand("%:p:h"), ' '), '\ ') |
"      \ exec "set path-=".s:tempPath |
"      \ exec "set path-=".s:default_path |
"      \ exec "set path^=".s:tempPath |
"      \ exec "set path^=".s:default_path


