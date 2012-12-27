syntax on "
" Vundle configuration
filetype off                   

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'git://github.com/tpope/vim-fugitive.git'
Bundle 'git://github.com/Lokaltog/vim-powerline.git'
Bundle 'git://github.com/scrooloose/nerdtree.git'
Bundle 'git://github.com/jistr/vim-nerdtree-tabs.git'
Bundle 'git://github.com/plasticboy/vim-markdown.git' 
Bundle 'git://github.com/ivanov/vim-ipython.git'
Bundle 'git://github.com/ervandew/supertab.git'
Bundle 'git://github.com/gg/python.vim.git'
Bundle 'git://github.com/scrooloose/nerdcommenter.git'
Bundle 'git://github.com/vim-scripts/pylint.vim.git'
Bundle 'git://github.com/klen/python-mode.git'

filetype indent plugin on

" General Configuration
set tabstop=4
set expandtab
set shiftwidth=4
set nu
set spelllang=en,fr
set noshowmode

" Keep the cursor centered
set scrolloff=1000
"nnoremap j jzz
"nnoremap } }zz

" Encoding
set encoding=utf-8
set fileencoding=utf-8

" Searching
set ignorecase
set smartcase
set hlsearch
set incsearch

" + Keep search result at the center of the screen
nnoremap <silent> n nzz
nnoremap <silent> N Nzz

" Remap leader to comm
let mapleader = ","

" Easy navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Easier moving of code block
noremap < {v}<j
noremap > {v}>j

" Colors
set t_Co=256
colorscheme desert
highlight IncSearch ctermfg=Black ctermbg=LightGreen cterm=NONE
highlight Search ctermfg=Black ctermbg=LightGreen cterm=NONE
highlight ErrorMsg ctermfg=Black ctermbg=LightBlue cterm=NONE
highlight SpellBad ctermfg=Black ctermbg=DarkGray cterm=NONE

highlight DiffAdd term=reverse cterm=bold ctermbg=darkGreen ctermfg=lightGray
highlight DiffChange term=reverse cterm=bold ctermbg=darkCyan ctermfg=black 
highlight DiffText term=reverse cterm=bold ctermbg=gray ctermfg=black 
highlight DiffDelete term=reverse cterm=NONE ctermbg=red ctermfg=black 

" General coding
au BufWinEnter *.py let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)

noremap <leader><leader> {v}=
nnoremap gr gd[{V%:s/<C-R>///gc<left><left><left>

" Powerline
let g:Powerline_symbols = 'fancy'

" Git
autocmd BufReadPost .git/COMMIT_EDITMSG set spell

" Markdown
autocmd BufReadPost *.md,*.markdown,*.md.html set filetype=markdown | set spell
autocmd BufNewFile *.md.html 0r ~/.vim/templates/strapdown | 6j | set filetype=markdown | set spell 

" Language tool (grammar check)
let g:languagetool_jar=$HOME . '/.vim/language_tool/LanguageTool.jar'

" HTML
"autocmd BufReadPost *.html NERDTree

" Folding
noremap zo za

noremap Y "+yy 
noremap zz {v}=j
