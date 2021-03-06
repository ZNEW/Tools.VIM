set nocompatible

let g:IsWindowsOS = (has('win32') || has('win64'))
let g:UserVimrcFileName = g:IsWindowsOS ? '_vimrc' : '.vimrc'
let g:UserVimFilesFolderName = g:IsWindowsOS ? '$HOME/vimfiles' : '$HOME/.vim'

filetype off

" Setup Pathogen to manage your plugins
" mkdir -p ~/.vim/autoload ~/.vim/bundle
" curl -so ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/HEAD/autoload/pathogen.vim
"Now you can install any plugin into a .vim/bundle/plugin-name/ folder
"call pathogen#infect()
if( g:IsWindowsOS )
  execute pathogen#infect('bundle/{}', 'bundle/xolox/{}', 'bundle/adoy/{}')
else
  execute pathogen#infect('bundle/{}', 'bundle/xolox/{}', 'bundle/adoy/{}')
endif

scriptencoding utf-8
set encoding=utf-8  " The encoding displayed.
set fileencoding=utf-8  " The encoding written to file

filetype plugin indent on


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
:exec ':source ' . g:UserVimFilesFolderName . '/TagListConfig.vim'
:exec ':source ' . g:UserVimFilesFolderName . '/ThemeAndSyntaxHighlighting.vim'
:exec ':source ' . g:UserVimFilesFolderName . '/UltiSnips.vim'
:exec ':source ' . g:UserVimFilesFolderName . '/YouCompleteMe.vim'
:exec ':source ' . g:UserVimFilesFolderName . '/Backup.vim'
:exec ':source ' . g:UserVimFilesFolderName . '/WindowsTransparencyOnFocus.vim'
:exec ':source ' . g:UserVimFilesFolderName . '/MiniBufExplorer.Config.vim'
:exec ':source ' . g:UserVimFilesFolderName . '/KeyMapping.vim'
:exec ':source ' . g:UserVimFilesFolderName . '/myFontSize.vim'
:exec ':source ' . g:UserVimFilesFolderName . '/adoy.vim-php-refactoring-toolbox.vim'
:exec ':source ' . g:UserVimFilesFolderName . '/silver-searcher.vim'
:exec ':source ' . g:UserVimFilesFolderName . '/vim-notes.vim'

:exec ':source ' . g:UserVimFilesFolderName . '/Test.vim'


