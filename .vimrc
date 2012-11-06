syntax on
"
" Vundle configuration
filetype off                   

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'Lokaltog/vim-powerline'
Bundle 'https://github.com/scrooloose/nerdtree.git'
Bundle 'git://github.com/jistr/vim-nerdtree-tabs.git'
Bundle 'git://github.com/nvie/vim-flake8.git'
Bundle 'taglist.vim'
Bundle 'git://github.com/plasticboy/vim-markdown.git' 
Bundle 'git://github.com/ivanov/vim-ipython.git'
Bundle 'git://github.com/ervandew/supertab.git'
Bundle 'git://github.com/gg/python.vim.git'
Bundle 'git://github.com/scrooloose/nerdcommenter.git'
Bundle 'git://github.com/vim-scripts/pylint.vim.git'

filetype indent plugin on

" General Configuration
set tabstop=4
set expandtab
set shiftwidth=4
set nu
set spelllang=en,fr
set noshowmode

if version >= 703
    set rnu
endif

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

" General coding
au BufWinEnter *.py let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)

noremap zz {v}=
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
