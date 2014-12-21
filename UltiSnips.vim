
" Snippets variables
let g:UltiSnipsSnippetDirectories=["UltiSnips"]
:exec ':set runtimepath+=' . expand('$HOME') .  "\\vimfiles\\Snippets"
let g:snips_author='Frederic ACHARD'
let g:author='Frederic ACHARD'
let g:snips_email='frederic.achard@saint-gobain.com'
let g:email='frederic.achard@saint-gobain.com'
let g:snips_github='none'
let g:github='none'

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

au BufEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"
au InsertEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"

let g:UltiSnipsExpandTrigger       = "<tab>"
let g:UltiSnipsJumpForwardTrigger  = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<C-j>"


