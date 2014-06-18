" [PLUGIN] TList : Panneau qui liste les fonctions {{{1
" -----------------------------------------------------


    filetype on
    filetype plugin on

    " Indiquer le chemin de ctags
    let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'

    " Langages
    au BufRead,BufNewFile *.js      set filetype=javascript
    au BufRead,BufNewFile *.as      set filetype=actionscript
    au BufRead,BufNewFile *.css     set filetype=css
    au BufRead,BufNewFile *.scss    set filetype=scss
    au BufRead,BufNewFile *.php     set filetype=php
    au BufRead,BufNewFile *.cpp     set filetype=cpp
    au BufRead,BufNewFile *.c       set filetype=c
    au BufRead,BufNewFile *.py      set filetype=python


    let tlist_javascript_settings   = 'vimjavascript;c:CLASSES;p:PROPERTIES;g:GETTER/SETTER;f:METHODS'
    let tlist_actionscript_settings = 'vimactionscript;c:CLASSES;f:METHODS;p:PROPERTIES'
    let tlist_css_settings          = 'vimcss;e:SECTIONS'
    let tlist_scss_settings         = 'vimcss;e:SECTIONS'
    let tlist_php_settings          = 'vimphp;c:CLASSES;p:PROPERTIES;f:METHODS'
    let tlist_cpp_settings          = 'c++;c:class;f:function'
    let tlist_c_settings            = 'c;f:My Functions'
"    let tlist_python_settings       = 'vimpython;f:My Functions'

    " Fermer Vim s'il ne reste que Tlist
    let Tlist_Exit_OnlyWindow = 1

    " La panneau gagne le focus dès qu'il est ouvert
    "let Tlist_GainFocus_On_ToggleOpen = 0

    " Une fois une fonction sélectionnée, on ferme le panneau
    let Tlist_Close_On_Select = 0

    " Mettre à jour automatiquement quand un fichier est en édition
    let Tlist_Auto_Update = 1

    " Toujours parser le fichier même si le panneau n'est pas ouvert
    let Tlist_Process_File_Always = 0

    " Ouvrir le panneau à droite
    let Tlist_Use_Right_Window = 1

    " Largeur du panneau
    let Tlist_WinWidth = 40

    " Le contenu du panneau ne représente que le fichier courant
    let Tlist_Show_One_File = 1

    " Afficher dans le menu
    let Tlist_Show_Menu = 1

    " Replie automatiquement les fichiers inactifs
    let Tlist_File_Fold_Auto_Close = 1

    let Tlist_Use_SingleClick = 1

    " Persistance
    " autocmd TabLeave * wincmd p
    autocmd TabEnter * execute ResumeTList()

    " F8 : [PLUGIN] TList
    map <silent> <F8> :execute ToggleTList()<cr>
    imap <F8> <Esc><F8>
    vmap <F8> <Esc><F8>

    " Afficher / Cacher TList
    let g:tlistopened=0
    
    function! ToggleTList()
        execute(":TlistToggle")
        if g:tlistopened != 0
            let g:tlistopened=0
        else
            let g:tlistopened=1
        endif
    endfunction

    function! ResumeTList()
        if g:tlistopened != 0
            execute(":TlistClose")
            execute(":TlistOpen")
        else
            execute(":TlistClose")
        endif
    endfunction


" }}}1
