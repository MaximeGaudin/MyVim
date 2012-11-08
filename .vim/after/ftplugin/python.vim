" Python
autocmd BufNewFile *.py 0r ~/.vim/templates/python
autocmd BufReadPost *.py set spell | set spelllang=en

" + Flake8
"let g:flake8_ignore="E128"
" autocmd BufWritePost *.py call Flake8()

" + NerdTree
let g:nerdtree_tabs_open_on_console_startup=1
let g:nerdtree_tabs_open_on_new_tab=1
if !exists(":Apep")
    command Apep silent execute "!autopep8 -i --select=W402,E201,E127,E303,E302,E225,W291,W293 %" | edit! | silent execute ":PyLint" | redraw! 
endif
