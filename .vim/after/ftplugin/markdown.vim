if !exists(':Compile')
    command Compile execute "!markdown % > %.html && google-chrome %:p.html"
endif

if !exists(':Show')
    command Show execute "!google-chrome %"
endif


" Better coloration and no spell check
syn region codeRegion start="`" end="`"
highlight codeRegion ctermfg=darkGray
