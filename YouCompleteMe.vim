if ( has('win32') || has('win64') )
    echo "PouicWin!"
else
    let $DYLD_FORCE_FLAT_NAMESPACE=1
endif
