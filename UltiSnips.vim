
" Snippets variables
let g:UltiSnipsSnippetDirectories=["UltiSnips"]

let g:snips_author='Frederic ACHARD'
let g:author='Frederic ACHARD'
let g:snips_email='frederic.achard@saint-gobain.com'
let g:email='frederic.achard@saint-gobain.com'

let g:snips_github='none'
let g:github='none'

let g:UltiSnipsExpandTrigger       = "<tab>"
let g:UltiSnipsJumpForwardTrigger  = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<C-j>"

exec ':set runtimepath+=' . expand('$HOME') .  "\\vimfiles\\Snippets"

" Autocmd Macros {{{

" Complete UltiSnip snippets with <tab>
function! g:UltiSnips_Complete()
    call UltiSnips#ExpandSnippet()
    if g:ulti_expand_res == 0
        if pumvisible()
            return "\<C-n>"
        else
            call UltiSnips#JumpForwards()
            if g:ulti_jump_forwards_res == 0
               return "\<TAB>"
            endif
        endif
    endif
    return ""
endfunction

" }}}

