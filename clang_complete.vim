
"clang_complete : under testing

let s:clang_library_path = g:IsWindowsOS ? 'E:\DEV.Tools\LLVM\3.5.0\bin' : '/Library/Developer/CommandLineTools/usr/lib'
if isdirectory(s:clang_library_path)
    let g:clang_library_path=s:clang_library_path
endif

" Clang Complete Settings
let g:clang_use_library=1
" if there's an error, allow us to see it
let g:clang_complete_copen=1
let g:clang_complete_macros=1
let g:clang_complete_patterns=0
" Limit memory use
let g:clang_memory_percent=70
" Remove -std=c++11 if you don't use C++ for everything like I do.
let g:clang_user_options=' -std=c++11 || exit 0'
" Set this to 0 if you don't want autoselect, 1 if you want autohighlight,
" and 2 if you want autoselect. 0 will make you arrow down to select the first
" option, 1 will select the first option for you, but won't insert it unless you
" press enter. 2 will automatically insert what it thinks is right. 1 is the most
" convenient IMO, and it defaults to 0.
let g:clang_auto_select=1

set conceallevel=2
set concealcursor=vin
let g:clang_snippets=1
let g:clang_conceal_snippets=1
" The single one that works with clang_complete
let g:clang_snippets_engine='clang_complete'




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

