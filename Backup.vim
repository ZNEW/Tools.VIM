
" keep a copy of last edit
" if this throws errors, make sure the backup dir exists
" set backup
" :exec ':set backupdir=' . g:UserVimFilesFolderName . '/backup'

" Disable stupid backup and swap files - they trigger too many events
" for file system watchers
set nobackup
set nowritebackup
set noswapfile

