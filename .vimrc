
let g:IsWindowsOS = (has('win32') || has('win64'))

let s:UserVimrcFileName = g:IsWindowsOS ? '_vimrc' : '.vimrc'

:exec ':autocmd! bufwritepost ' . s:UserVimrcFileName . ' source %'

let g:UserVimFilesFolderName = g:IsWindowsOS ? '$HOME/vimfiles' : '$HOME/.vim'

:exec ':source ' . g:UserVimFilesFolderName . '/Abbreviations.vim'
:exec ':source ' . g:UserVimFilesFolderName . '/Autocmd.vim'
:exec ':source ' . g:UserVimFilesFolderName . '/AutoIndent.vim'
:exec ':source ' . g:UserVimFilesFolderName . '/Backup.vim'
:exec ':source ' . g:UserVimFilesFolderName . '/clang_complete.vim'
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
