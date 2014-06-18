
let g:IsWindowsOS = (has('win32') || has('win64'))

let s:UserVimrcFileName = g:IsWindowsOS ? '_vimrc' : '.vimrc'

:exec ':autocmd! bufwritepost ' . s:UserVimrcFileName . ' source %'

let g:UserVimFilesFolderName = g:IsWindowsOS ? '$HOME/vimfiles' : '$HOME/.vim'

:exec ':source ' . g:UserVimFilesFolderName . '/Abbreviations.vim'
:exec ':source ' . g:UserVimFilesFolderName . '/AutoIndent.vim'
:exec ':source ' . g:UserVimFilesFolderName . '/Autocmd.vim'
:exec ':source ' . g:UserVimFilesFolderName . '/Backup.vim'
:exec ':source ' . g:UserVimFilesFolderName . '/CtagsConfig.vim'
:exec ':source ' . g:UserVimFilesFolderName . '/CtrlpConfig.vim'
:exec ':source ' . g:UserVimFilesFolderName . '/EditorConfig.vim'
:exec ':source ' . g:UserVimFilesFolderName . '/Keyboard.vim'
:exec ':source ' . g:UserVimFilesFolderName . '/KeyMapping.vim'
:exec ':source ' . g:UserVimFilesFolderName . '/Mouse.vim'
:exec ':source ' . g:UserVimFilesFolderName . '/MyFunctions.vim'
:exec ':source ' . g:UserVimFilesFolderName . '/NERDTreeConfig.vim'
:exec ':source ' . g:UserVimFilesFolderName . '/OmniCppCompleteConfig.vim'
":exec ':source ' . g:UserVimFilesFolderName . '/PythonConfig.vim'
:exec ':source ' . g:UserVimFilesFolderName . '/RestoreLastCursorPos.vim'
:exec ':source ' . g:UserVimFilesFolderName . '/ThemeAndSyntaxHighlighting.vim'
:exec ':source ' . g:UserVimFilesFolderName . '/TagListConfig.vim'

" Setup Pathogen to manage your plugins
" mkdir -p ~/.vim/autoload ~/.vim/bundle
" curl -so ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/HEAD/autoload/pathogen.vim
"Now you can install any plugin into a .vim/bundle/plugin-name/ folder
call pathogen#infect()

source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set diffexpr=MyDiff2()

filetype plugin on

"A REGARDER
" Python folding
" mkdir -p ~/.vim/ftplugin
" wget -O ~/.vim/ftplugin/python_editing.vim http://www.vim.org/scripts/download_script.php?src_id=5492
" set nofoldenable

set foldmethod=manual
