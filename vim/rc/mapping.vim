" lead with the leader
let mapleader="\<space>"
let g:mapleader="\<space>"

""""""""""""""
" navigation "
""""""""""""""
nmap <leader>f :NERDTreeFind<CR>
nmap <leader>l :NERDTreeToggle<CR>
nmap <leader>- :bprevious<CR>
nmap <leader>= :bnext<CR>
" search for word under cursor from top/bottom.
vnoremap <silent> * :call VisualSelection('f', '')<CR>
vnoremap <silent> * :call VisualSelection('b', '')<CR>
" easily jump between splits
nmap <C-l> <C-w>l
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-\> <C-w><C-p>
" treat long lines as break lines
map j gj
map k gk


"""""""""""""""""""
" Code Completion "
"""""""""""""""""""
" open up tagbar
nmap <leader>t :TagbarToggle<CR>
" cuz tags are usually more than 1
nnoremap <C-]> g<C-]>

""""""""""""""""""""""""""
" File/Buffer Management "
""""""""""""""""""""""""""
nmap <C-b> :CtrlPBuffer<cr>
nmap <C-f> :CtrlPMRUFiles<cr>
" close the current buffer/tab
map <leader>bd :bd<CR>
nmap <leader>n :set invnumber<CR>
" clear the screen, remove search highlights
nnoremap <C-l> :nohl<CR><C-l>

""""""""
" Misc "
""""""""

" copy current file path to clipboard
nnoremap <leader>cf :let @*=expand("%")<CR>
" for full path
nnoremap <leader>cF :let @*=expand("%:p")<CR>

" fast saving/closing
nmap <leader>w :w!<cr>
nmap <leader>q :q<cr>
" fast vimrc reloading
nmap <leader>v :so ~/.vimrc<cr>
" Check what kind of syntax element this is, function defined in extended.vim
nmap <leader>^ :call SynStack()<cr>
