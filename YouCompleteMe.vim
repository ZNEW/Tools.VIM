if ( has('win32') || has('win64') )
"    echo "PouicWin!"
else
    let $DYLD_FORCE_FLAT_NAMESPACE=1
endif

"-------------------------------------------------------------------------------
"The *g:ycm_global_ycm_extra_conf* option

"Normally, YCM searches for a '.ycm_extra_conf.py' file for compilation flags
"(see the User Guide for more details on how this works). This option specifies
"a fallback path to a config file which is used if no '.ycm_extra_conf.py' is
"found.

"You can place such a global file anywhere in your filesystem.
if ( has('win32') || has('win64') )
    let g:ycm_global_ycm_extra_conf = expand("$HOME") . '\vimfiles\ycm_extra_conf.WIN.py'
else
    let g:ycm_global_ycm_extra_conf = expand("$HOME") .'/.vim/ycm_extra_conf.OSX.py'
endif

"-------------------------------------------------------------------------------
"The *g:ycm_confirm_extra_conf* option

"When this option is set to '1' YCM will ask once per '.ycm_extra_conf.py' file
"if it is safe to be loaded. This is to prevent execution of malicious code from
"a '.ycm_extra_conf.py' file you didn't write.

"To selectively get YCM to ask/not ask about loading certain
"'.ycm_extra_conf.py' files, see the |g:ycm_extra_conf_globlist| option.

"Default: '1'

let g:ycm_confirm_extra_conf = 0
