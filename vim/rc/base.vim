"""""""""""
" General "
"""""""""""
call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on
syntax on

set backspace=indent,eol,start
" Similar to set autochdir 
" autocmd BufEnter * silent! lcd %:p:h
set history=100
set hidden
set lazyredraw
set wildmenu
set wildmode=longest:full,full
set tags=tags;

" turn off backup stuff because version control
set nobackup nowb noswapfile

""""""""""""""""
" Tabs/Indents "
""""""""""""""""
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab

" autoindent, smart indent, wrap lines
set ai
set si
set wrap
set hlsearch

""""""""""
" Colors "
""""""""""
set background=dark
color gruvbox


""""""""
" Misc "
""""""""

" ignore compiled files
set wildignore=*.0,*~,*.pyc
set wildignore+=.git,*/node_modules/*,*.pyc,

let g:loaded_matchit=1


