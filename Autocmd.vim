
" bufwritepost {{{
"
" Automatic reloading of .vimrc
"autocmd! bufwritepost .vimrc source %
:exec ':autocmd! bufwritepost ' . g:UserVimrcFileName . ' source %'

"sauvegarde des qu'on perd le focus
au Focuslost * :wa

"Maintien des proprtions lors du redimentionnement
"au VimResized * exe "normal! \<c-w>="

" use Curent file path
autocmd BufEnter * silent! lcd %:p:h

" }}}


