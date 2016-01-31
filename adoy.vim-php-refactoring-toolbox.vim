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
"
" }}}
