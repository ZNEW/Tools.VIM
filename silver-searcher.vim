" Silver Searcher
if executable('ag')
    " Note we extract the column as well as the file and line number
    set grepprg=ag\ --nogroup\ --nocolor\ --column
    set grepformat=%f:%l:%c%m
    " Make CtrlP use ag for listing the files. Way faster and no useless files.
    " Without --hidden, it never finds .travis.yml since it starts with a dot
    let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'
    let g:ctrlp_use_caching = 0
endif

