set nocompatible
scriptencoding utf-8
set encoding=UTF-8  " The encoding displayed.
set fileencoding=UTF-8  " The encoding written to file

filetype off

" Setup Pathogen to manage your plugins
" mkdir -p ~/.vim/autoload ~/.vim/bundle
" curl -so ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/HEAD/autoload/pathogen.vim
"Now you can install any plugin into a .vim/bundle/plugin-name/ folder
call pathogen#infect()

filetype plugin indent on

let g:IsWindowsOS = (has('win32') || has('win64'))
let g:UserVimrcFileName = g:IsWindowsOS ? '_vimrc' : '.vimrc'
let g:UserVimFilesFolderName = g:IsWindowsOS ? '$HOME/vimfiles' : '$HOME/.vim'

:exec ':source ' . g:UserVimFilesFolderName . '/Abbreviations.vim'
:exec ':source ' . g:UserVimFilesFolderName . '/Autocmd.vim'
:exec ':source ' . g:UserVimFilesFolderName . '/AutoIndent.vim'
:exec ':source ' . g:UserVimFilesFolderName . '/CtagsConfig.vim'
:exec ':source ' . g:UserVimFilesFolderName . '/CtrlpConfig.vim'
:exec ':source ' . g:UserVimFilesFolderName . '/EditorConfig.vim'
:exec ':source ' . g:UserVimFilesFolderName . '/Keyboard.vim'
:exec ':source ' . g:UserVimFilesFolderName . '/Mouse.vim'
:exec ':source ' . g:UserVimFilesFolderName . '/mswin.vim'
:exec ':source ' . g:UserVimFilesFolderName . '/NERDTreeConfig.vim"'
":exec ':source ' . g:UserVimFilesFolderName . '/Quicksave.vim'
:exec ':source ' . g:UserVimFilesFolderName . '/Refactoring.vim'
:exec ':source ' . g:UserVimFilesFolderName . '/RestoreLastCursorPos.vim'
:exec ':source ' . g:UserVimFilesFolderName . '/Snips.vim'
:exec ':source ' . g:UserVimFilesFolderName . '/TagListConfig.vim'
:exec ':source ' . g:UserVimFilesFolderName . '/ThemeAndSyntaxHighlighting.vim'
:exec ':source ' . g:UserVimFilesFolderName . '/UltiSnips.vim'
:exec ':source ' . g:UserVimFilesFolderName . '/YouCompleteMe.vim'
:exec ':source ' . g:UserVimFilesFolderName . '/Backup.vim'
:exec ':source ' . g:UserVimFilesFolderName . '/WindowsTransparencyOnFocus.vim'

:exec ':source ' . g:UserVimFilesFolderName . '/KeyMapping.vim'

:exec ':source ' . g:UserVimFilesFolderName . '/Test.vim'

:set foldmethod=indent
:set foldlevel=2
:set foldlevelstart=20

let NERDTreeIgnore=['\.meta$', '\.*\~$']
