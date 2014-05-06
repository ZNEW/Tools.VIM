
" keep a copy of last edit
" if this throws errors, make sure the backup dir exists

set backup
:exec ':set backupdir=' . l_UserVimFiles . '/backup'

