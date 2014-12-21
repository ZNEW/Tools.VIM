" [PLUGIN] NERDTree {{{1
" ----------------------
    " Ouvrir NERDTree à chaque fois qu'on lance vim
    " Et aussi à chaque fois qu'on change d'onglet
    " La même sidebar est réutilisée à chaque fois
    "autocmd VimEnter * execute ResumeNERDTree()
    "autocmd VimEnter * wincmd p
    "autocmd TabLeave * wincmd p
    "autocmd TabEnter * execute ResumeNERDTree()
    "autocmd TabEnter * wincmd p

    " Sous plugin nerdtree tabs
    let g:nerdtree_tabs_open_on_gui_startup = 1
    let g:nerdtree_tabs_open_on_console_startup = 1
    let g:nerdtree_tabs_smart_startup_focus = 1
    let g:nerdtree_tabs_focus_on_files = 1

    " Ne pas ignorer de fichiers
    let NERDTreeIgnore=[]

    " Affichier les dossiers et fichiers cachés
    let NERDTreeShowHidden=1

    " Taille de l'explorateur
    let NERDTreeWinSize=60
" }}}1

let g:NERDTreeWinPos = "right"

"let NERDTreeShowHidden=1
" Start NERDTree
"autocmd VimEnter * NERDTree

" Go to previous (last accessed) window.
"autocmd VimEnter * wincmd p

