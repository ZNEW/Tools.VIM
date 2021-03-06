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
:exec ':source ' . g:UserVimFilesFolderName . '/MiniBufExplorer.Config.vim'

:exec ':source ' . g:UserVimFilesFolderName . '/KeyMapping.vim'

:exec ':source ' . g:UserVimFilesFolderName . '/Test.vim'


let NERDTreeIgnore=['\.meta$', '\.*\~$']

" Tests
" A chercher sur le web
au BufRead,BufNewFile *.cs      set filetype=cs
au BufRead,BufNewFile *.vim      set filetype=vim
"autocmd FileType cs im :<CR> :<CR><TAB>

" Silver Searcher
if executable('ag')
    " Note we extract the column as well as the file and line number
    set grepprg=ag\ --nogroup\ --nocolor\ --column
    set grepformat=%f:%l:%c%m
    " Make CtrlP use ag for listing the files. Way faster and no useless files.
    " Without --hidden, it never finds .travis.yml since it starts with a dot
    let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'
    let g:ctrlp_use_caching = 0
endif


" Tests on Font Size 
map <C-f><C-u> :call g:SetFontBigger()<CR>
map <C-f><C-s> :call g:SetFontSmaler()<CR>

let g:fontHeightList = [6, 7, 8, 8, 10, 11, 12, 14, 16, 18]
let g:fontHeightListMin = 0
let g:fontHeightListMax = 9
let g:currentFontHeightID = 8
let g:currentFontHeight=12

function! g:SetFontBigger()

  let g:currentFontHeightID += 1

  if g:currentFontHeightID > g:fontHeightListMax
    let g:currentFontHeightID = g:fontHeightListMax
  endif

  let g:currentFontHeight = g:fontHeightList[g:currentFontHeightID]

  call g:SetFontHeight( g:currentFontHeight )

  set laststatus=2

endfunction

function! g:SetFontSmaler()

  let g:currentFontHeightID -= 1

  if g:currentFontHeightID < g:fontHeightListMin
    let g:currentFontHeightID = g:fontHeightListMin
  endif

  let g:currentFontHeight = g:fontHeightList[g:currentFontHeightID]

  call g:SetFontHeight( g:currentFontHeight )

  set laststatus=2

endfunction

let g:currentFontName='Inconsolata_for_Powerline'

function! g:SetFontHeight(v)
  :exec ':set guifont=' . g:currentFontName . ':h' . a:v
endfunction

:imap ,, <Esc>

au BufEnter *.txt set so=15
au BufEnter *.cs set so=15

au BufLeave *.txt set so=1
au BufLeave *.cs set so=1


" Refactoring mapping {{{

if exists("vim_php_refactoring_mapping")
  finish
endif

let g:vim_php_refactoring_use_default_mapping = 0

if g:vim_php_refactoring_use_default_mapping == 0 
  nnoremap <unique> <Leader>prlv :call PhpRenameLocalVariable()<CR>
  nnoremap <unique> <Leader>prcv :call PhpRenameClassVariable()<CR>
  nnoremap <unique> <Leader>prm :call PhpRenameMethod()<CR>
  nnoremap <unique> <Leader>peu :call PhpExtractUse()<CR>
  vnoremap <unique> <Leader>pec :call PhpExtractConst()<CR>
  nnoremap <unique> <Leader>pep :call PhpExtractClassProperty()<CR>
  vnoremap <unique> <Leader>pem :call PhpExtractMethod()<CR>
  nnoremap <unique> <Leader>pnp :call PhpCreateProperty()<CR>
  nnoremap <unique> <Leader>pdu :call PhpDetectUnusedUseStatements()<CR>
  vnoremap <unique> <Leader>p== :call PhpAlignAssigns()<CR>
  nnoremap <unique> <Leader>psg :call PhpCreateSettersAndGetters()<CR>
  nnoremap <unique> <Leader>pda :call PhpDocAll()<CR>
endif
let vim_php_refactoring_mapping = 1
" }}}
" 
