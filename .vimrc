
let l_IsWinOS = (has('win32') || has('win64')) 


let l_UserVimRC = l_IsWinOS ? '_vimrc' : '.vimrc'

:exec ':autocmd! bufwritepost ' . l_UserVimRC . ' source %'


let l_UserVimFiles = l_IsWinOS ? '$HOME/vimfiles' : '$HOME/.vim'

:exec ':source ' . l_UserVimFiles . '/MartinBrochhaus.vim'
:exec ':source ' . l_UserVimFiles . '/MyFunctions.vim'
:exec ':source ' . l_UserVimFiles . '/Backup.vim'
:exec ':source ' . l_UserVimFiles . '/RestoreLastCursorPos.vim'
:exec ':source ' . l_UserVimFiles . '/NERDTreeConfig.vim'
:exec ':source ' . l_UserVimFiles . '/ShowCursorLine.vim'
:exec ':source ' . l_UserVimFiles . '/Abbreviations.vim'
:exec ':source ' . l_UserVimFiles . '/TagListConfig.vim'
:exec ':source ' . l_UserVimFiles . '/CtagsConfig.vim'

nnoremap <C-t> <C-]>

set nocompatible

source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin


set diffexpr=MyDiff2()

"" map <Leader>p i<Esc>ea()<Esc>
"" map <Leader>c i<Esc>ea{}<Esc>

set nocp
filetype plugin on

