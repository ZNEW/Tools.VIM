" Tests on Font Size 
if has('gui_running')
  "set guifont=Inconsolata_for_Powerline:h12    " set fonts for gui vim
  "set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h12
  if( g:IsWindowsOS )
    set guifont=DejaVu_Sans_Mono_for_Powerline:h11    " set fonts for gui vim
  else
    set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h11    " set fonts for gui vim
  endif
  "set transparency=10        " set transparent window
  "call libcallnr("vimtweak.dll", "SetAlpha", 210) 
"  set guioptions=egmrt  " hide the gui menubar
endif

"let g:currentFontName='Inconsolata_for_Powerline'
"let g:currentFontName='DejaVu\ Sans\ Mono\ for\ Powerline'
"let g:currentFontName='DejaVu_Sans_Mono_for_Powerline'
let g:currentFontName = g:IsWindowsOS ? 'DejaVu_Sans_Mono_for_Powerline' : 'DejaVu\ Sans\ Mono\ for\ Powerline'
let g:fontHeightList = [6, 7, 8, 8, 10, 11, 12, 14, 16, 18]
let g:fontHeightListMin = 0
let g:fontHeightListMax = 9
let g:currentFontHeightID = 8
let g:currentFontHeight=11

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

function! g:SetFontHeight(v)
  :exec ':set guifont=' . g:currentFontName . ':h' . a:v
endfunction

