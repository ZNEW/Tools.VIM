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

let g:vim_php_refactoring_use_default_mapping = 0
" Refactoring mapping {{{
if g:vim_php_refactoring_use_default_mapping == 0
    "nnoremap <unique> <Leader>prlv :call PhpRenameLocalVariable()<CR>
    "nnoremap <unique> <Leader>prcv :call PhpRenameClassVariable()<CR>
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
" }}}


:set foldmethod=indent
:set foldlevel=2
:set foldlevelstart=20

let NERDTreeIgnore=['\.meta$', '\.*\~$']

nnoremap <leader>e :call g:EditInNewTab( expand( '$HOME' ) . '/' . expand( g:UserVimrcFileName ) )<CR>
map <leader>r :NERDTreeFind<cr>
"map <C-o> :NERDTreeToggle %<CR>
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

nnoremap <TAB><TAB> :tabn<cr>


" list files, it's the key setting, if you haven't set,
" you will get a blank buffer
" let g:netrw_ssh_cmd  = "plink -T -ssh "
let g:netrw_ssh_cmd  = "ssh -i \%USERPROFILE\%\\.ssh\\id_rsa"
"let g:netrw_list_cmd = 'plink HOSTNAME ls -Fa '
" if you haven't add putty directory in system path, you should
" specify scp/sftp command.  For examples:
"let g:netrw_sftp_cmd = 'PSFTP.exe '
"let g:netrw_scp_cmd = 'PSCP.exe -q -batch '
"let g:netrw_silent = 1


