autocmd BufWritePost *.rst silent execute "!rst2html.py < % > /tmp/rst.html" | redraw!
