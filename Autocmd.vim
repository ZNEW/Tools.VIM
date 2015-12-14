
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
" autocmd BufEnter * silent! lcd %:p:h


    " Langages
    au BufRead,BufNewFile *.js      set filetype=javascript
    au BufRead,BufNewFile *.as      set filetype=actionscript
    au BufRead,BufNewFile *.css     set filetype=css
    au BufRead,BufNewFile *.scss    set filetype=scss
    au BufRead,BufNewFile *.php     set filetype=php
    au BufRead,BufNewFile *.cpp     set filetype=cpp
    au BufRead,BufNewFile *.c       set filetype=c
    au BufRead,BufNewFile *.py      set filetype=python

" Note, perl automatically sets foldmethod in the syntax file
autocmd Syntax c,cpp,vim,xml,html,xhtml setlocal foldmethod=syntax
autocmd Syntax c,cpp,vim,xml,html,xhtml,perl normal zRt
autocmd BufNewFile,BufRead *.xml setf xml

autocmd TabEnter * call UpdateNerdTree()

au BufEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"
au InsertEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"


  " auto indent

  autocmd BufRead,BufNewFile *.py set ai
  autocmd BufRead,BufNewFile *.cpp set ai
  "autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,with,try,except,finally,def,class
  autocmd FileType python im :<CR> :<CR><TAB>




  
" }}}

" Autocmd Macros {{{




" }}}


