
let g:ctags_path = g:IsWindowsOS ? 'ctags.exe' : '/usr/local/bin/ctags'

let g:ctags_statusline = 0

let g:ctags_title = 1

let generate_tags = 1

let g:ctags_args = '-I __declspec+'

""let s:TagsFolderName = g:IsWindowsOS ? '$HOME/tags/Win' : '$HOME/tags/OSX'
let TagsFolderName = g:IsWindowsOS ? '$HOME/tags/Win' : '$HOME/tags/OSX'

"" configure tags - add additional tags here or comment out not-used ones
"":exec ':set tags+=' . s:TagsFolderName . '/cpp/cpp.tags'
"":exec ':set tags+=' . s:TagsFolderName . '/cpp/OpenGL.tags'
"":exec ':set tags+=' . s:TagsFolderName . '/cpp/GLUT.tags'
"":exec ':set tags+=' . s:TagsFolderName . '/python/python.tags'
"" configure tags - add additional tags here or comment out not-used ones
:exec ':set tags+=' . TagsFolderName . '/cpp/cpp.tags'
:exec ':set tags+=' . TagsFolderName . '/cpp/OpenGL.tags'
:exec ':set tags+=' . TagsFolderName . '/cpp/GLUT.tags'
:exec ':set tags+=' . TagsFolderName . '/python/python.tags'

" build tags of your own project with Ctrl-F12
map <C-F12> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

