if &cp || (exists('g:loaded_transparency_windows_vim') && g:loaded_transparency_windows_vim)
    finish
endif

let g:loaded_transparency_windows_vim = 1

if !has('gui_running')
   " || (!has('win32') && !has('win64'))
    finish
endif

"let s:dll = globpath(&rtp, 'vimtweak.dll')

let g:FocusedWindowTransparency = 2
let g:UnfocusedWindowTransparency = 20

if has('win32') || has('win64')
    let s:dll = globpath('~/bin', 'vimtweak.dll')
    if len(s:dll) == 0
        finish
    endif
endif

function! s:Transparency(v)
    if has('gui_running')
        if (has('win32') || has('win64'))
            call libcallnr(s:dll, 'SetAlpha', 255-(5+2*a:v))
        else
            :exec ':set transparency=' . a:v
        endif
    endif
endfunction


function! Test()
    if(expand("%")=="")
        echo "titi"
    endif

   if (&buftype=="") && (expand("%:r") > "") && (&readonly==0)
"      write
      echo "toto"
   endif
endfunction

function! Test2()
    echo "titi"
endfunction

augroup transparency_windows
""    autocmd BufLeave,FocusLost * silent! wall
    autocmd!
    autocmd FocusGained * call s:Transparency(g:FocusedWindowTransparency)
    autocmd FocusLost * call s:Transparency(g:UnfocusedWindowTransparency)
"    autocmd BufLeave,FocusLost * bufdo! call Test()
    autocmd BufNewFile call Test2()
augroup END

call s:Transparency(g:FocusedWindowTransparency)


