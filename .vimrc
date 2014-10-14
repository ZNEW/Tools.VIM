
let g:IsWindowsOS = (has('win32') || has('win64'))

let s:UserVimrcFileName = g:IsWindowsOS ? '_vimrc' : '.vimrc'

:exec ':autocmd! bufwritepost ' . s:UserVimrcFileName . ' source %'

let g:UserVimFilesFolderName = g:IsWindowsOS ? '$HOME/vimfiles' : '$HOME/.vim'

:exec ':source ' . g:UserVimFilesFolderName . '/Abbreviations.vim'
:exec ':source ' . g:UserVimFilesFolderName . '/Autocmd.vim'
:exec ':source ' . g:UserVimFilesFolderName . '/AutoIndent.vim'
:exec ':source ' . g:UserVimFilesFolderName . '/CtagsConfig.vim'
:exec ':source ' . g:UserVimFilesFolderName . '/CtrlpConfig.vim'
:exec ':source ' . g:UserVimFilesFolderName . '/EditorConfig.vim'
:exec ':source ' . g:UserVimFilesFolderName . '/Keyboard.vim'
:exec ':source ' . g:UserVimFilesFolderName . '/KeyMapping.vim'
:exec ':source ' . g:UserVimFilesFolderName . '/Mouse.vim'
:exec ':source ' . g:UserVimFilesFolderName . '/NERDTreeConfig.vim'
:exec ':source ' . g:UserVimFilesFolderName . '/RestoreLastCursorPos.vim'
:exec ':source ' . g:UserVimFilesFolderName . '/TagListConfig.vim'
:exec ':source ' . g:UserVimFilesFolderName . '/ThemeAndSyntaxHighlighting.vim'
:exec ':source ' . g:UserVimFilesFolderName . '/YouCompleteMe.vim'
:exec ':source ' . g:UserVimFilesFolderName . '/Backup.vim'
:exec ':source ' . g:UserVimFilesFolderName . '/WindowsTransparencyOnFocus.vim'


" Setup Pathogen to manage your plugins
" mkdir -p ~/.vim/autoload ~/.vim/bundle
" curl -so ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/HEAD/autoload/pathogen.vim
"Now you can install any plugin into a .vim/bundle/plugin-name/ folder
call pathogen#infect()

source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin


filetype plugin on

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

" use Curent file path
autocmd BufEnter * silent! lcd %:p:h

"UltiSnips use only tab
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<a-tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" http://robots.thoughtbot.com/vim-splits-move-faster-and-more-naturally

set nobackup
set nowritebackup
set noswapfile


"En test
"sauvegarde des qu'on perd le focus
au Focuslost * :wa

"Maintien des proprtions lors du redimentionnement
au VimResized * exe "normal! \<c-w>="

"Suppresion de la fin de la ligne
nnoremap D d$

"centered search
nnoremap n nzzzv
nnoremap N Nzzzv

"Do not move on *
nnoremap * *<c-o>

"Windows resizing
nnoremap <S-left> 5<c-w><
nnoremap <S-right> 5<c-w>>

"Begin/End of line/file
nnoremap H ^
nnoremap J gg
nnoremap K Gzzzv
nnoremap L g_

set noeb vb t_vb=
 
set encoding=utf-8  " The encoding displayed.
set fileencoding=utf-8  " The encoding written to file.

if has('gui_running')
  set guifont=Inconsolata_for_Powerline:h12    " set fonts for gui vim
  "set transparency=10        " set transparent window
  "call libcallnr("vimtweak.dll", "SetAlpha", 210) 
"  set guioptions=egmrt  " hide the gui menubar
endif

let g:airline_powerline_fonts=1

"arf conflit avec la navigation entre les fenetre

"Same in Insert Mode
"inoremap <c-h> <esc>bi
"inoremap <c-l> <esc>ei

"inoremap <c-H><c-H> <esc>I
"inoremap <c-J><c-J> <esc>ggA
"inoremap <c-K><c-K> <esc>GzzzvA
"inoremap <c-L><c-L> <esc>A

