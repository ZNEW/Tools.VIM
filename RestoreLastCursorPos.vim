
" retrouver à la même position qu'en quittant :
if has("autocmd")
  filetype plugin indent on
  autocmd FileType text setlocal textwidth=78

" always jump to last edit position when opening a file
  autocmd BufReadPost *
  \\ if line("'\\"") > 0 && line("'\\"") <= line("$") |
  \\   exe "normal g`\\"" |
  \\ endif
endif

