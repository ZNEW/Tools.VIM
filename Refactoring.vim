
function! ExtractMethod() range
  let name = inputdialog("Name of new method:")
  '<
  exe "normal! O\<BS>private " . name ."()\<CR>{\<Esc>"
  '>
  exe "normal! oreturn ;\<CR>}\<Esc>k"
  s/return/\/\/ return/ge
  normal! j%
  normal! kf(
  exe "normal! yyPi// = \<Esc>wdwA;\<Esc>"
  normal! ==
  normal! j0w
endfunction

function! CreateProperty(type)
  exe "normal bim_\<Esc>b\"yywiprivate ".a:type." \<Esc>A;\<CR>public ".a:type.
        \ " \<Esc>\"ypb2xea\<CR>{\<Esc>oget\<CR>{\<CR>return " .
        \ "\<Esc>\"ypa;\<CR>}\<CR>set\<CR>{\<CR>\<Tab>\<Esc>\"yPa = value;\<CR>}\<CR>}\<CR>\<Esc>"
  normal! 12k2wi
endfunction

function! CreateProperty()
  exe "normal bim_\<Esc>b\"yyybiprivate \<Esc>A;\<CR>\<Esc>\"ypw\"xyw\<Esc>2xbipublic \<Esc>$a\<CR>{\<Esc>oget\<CR>{\<CR>return \<Esc>\"xpa;\<CR>}\<CR>set\<CR>{\<CR>\<Tab>\<Esc>\"xPa = value;\<CR>}\<CR>}\<CR>\<Esc>"
  normal 12k2wi
endfunction

function! ImplementAbstractClass() range
  exe "normal \<Esc>\"yyw"
  /{
  normal "xy%
  normal %o
  exe "normal! \<Esc>o"
  let name = inputdialog("Name of new method:")
  exe "normal! ipublic class " .name." : \<Esc>\"yp\"xp"
  exe "normal! }O}\<Esc>=="
  normal %v%
  normal! gv
  '<,'>s/abstract/override/g
  normal! gv
  '<,'>s/;/\r{\r}\r/g
  normal! ==
  normal %kdd%k
endfunction


