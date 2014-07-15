
"clang_complete : under testing

let s:clang_library_path = g:IsWindowsOS ? 'C:/Users/Zog/bin' : '/Library/Developer/CommandLineTools/usr/lib'
if isdirectory(s:clang_library_path)
    let g:clang_library_path=s:clang_library_path
endif

"if ( has('win32') || has('win64') ) 
"Code completion
"    let g:clang_hl_errors = 1
"    let g:clang_copen = 1
"    let g:clang_complete_patterns = 1
"    let g:clang_auto_select = 1
"    let g:clang_exec='C:/Users/Zog/bin/clang.exe'
"    let g:clang_use_library = 1
"    let g:clang_library_path = 'C:/Users/Zog/bin'
"endif
"
" under testing
"set completeopt+=preview

"clang_complete
"let s:clang_library_path='/Library/Developer/CommandLineTools/usr/lib'
"if isdirectory(s:clang_library_path)
"    let g:clang_library_path=s:clang_library_path
"endif

set conceallevel=2
set concealcursor=vin
let g:clang_snippets=1
let g:clang_conceal_snippets=1

" The single one that works with clang_complete
let g:clang_snippets_engine='clang_complete'

" Complete options (disable preview scratch window, longest removed to aways
" show menu)
set completeopt=menu
set completeopt+=menuone
set completeopt+=preview

" Limit popup menu height
set pumheight=20

" SuperTab completion fall-back 
let g:SuperTabDefaultCompletionType='<c-x><c-u><c-p>'

