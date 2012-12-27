" Python
set spell 
set spelllang=en 

if !filereadable(expand('%:p'))
    0r ~/.vim/templates/python
    6j
endif

" + NerdTree
let g:nerdtree_tabs_open_on_console_startup=1
let g:nerdtree_tabs_open_on_new_tab=1
if !exists(":Apep")
    command Apep silent execute "!autopep8 -i --select=E203,W402,E201,E127,E303,E302,E225,W291,W293 %" | edit! | silent execute ":PyLint" | redraw! 
endif
