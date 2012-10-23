" Python
autocmd BufNewFile *.py 0r ~/.vim/templates/python
autocmd BufReadPost *.py set spell 

" + Flake8
let g:flake8_ignore="E128"
autocmd BufWritePost *.py call Flake8()

" + NerdTree
let g:nerdtree_tabs_open_on_console_startup=1
let g:nerdtree_tabs_open_on_new_tab=1
