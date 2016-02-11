let g:snips_author='ZNEW'
let g:author='ZNEW'
let g:snips_email='none'
let g:email='none'
let g:snips_github='none'
let g:github='none'

function! CheckLocalSnips()
  if filereadable( glob("~/Snips.local.vim"))
"    echo "SpecificFile exists" . glob("~/Snips.local.vim")
    exec ':source ' . expand("~/Snips.local.vim")
  else
"    echo "SpecificFile does not exist"
  endif
endfunction

call CheckLocalSnips()

" Snippets variables
let g:UltiSnipsSnippetDirectories=["UltiSnips"]
let g:UserVimSnippetsFolderName = g:IsWindowsOS ? '\UltiSnips' : '/UltiSnips'
exec ':set runtimepath+=' . expand( g:UserVimFilesFolderName ) . g:UserVimSnippetsFolderName

let g:UltiSnipsExpandTrigger       = "<tab>"
let g:UltiSnipsJumpForwardTrigger  = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<C-j>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

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

