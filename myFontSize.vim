" Tests on Font Size 

let g:currentFontName='Inconsolata_for_Powerline'
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

function! g:SetFontHeight(v)
  :exec ':set guifont=' . g:currentFontName . ':h' . a:v
endfunction

