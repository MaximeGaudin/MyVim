command Compile execute "!markdown % > %.html && google-chrome %:p.html"
command Show execute "!google-chrome %"

" Better coloration and no spell check
syn region codeRegion start="`" end="`"
highlight codeRegion ctermfg=darkGray
