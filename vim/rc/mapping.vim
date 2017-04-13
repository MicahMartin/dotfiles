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
" vimgrep(ag) word under cursor in normal
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
" vimgrep(ag) current visual selection
vnoremap <C-g> :vimgrep/\%(\%'<\|\%>'<\%<'>\|\%'>\)FOO/ %
" vimgrep with args
nnoremap <C-g> :Ag<SPACE>
" search for files from top/bottom.
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


" Check what kind of syntax element this is, function defined in extended.vim
nmap <leader>^ :call SynStack()<cr>

""""""""""""""""""""""""""
" File/Buffer Management "
""""""""""""""""""""""""""
nmap <C-b> :CtrlPBuffer<cr>
nmap <C-f> :CtrlPMRUFiles<cr>
" close the current buffer/tab
map <leader>bd :Bclose<cr>tabclose<cr>gT

""""""""
" Misc "
""""""""

" fast saving/closing
nmap <leader>w :w!<cr>
nmap <leader>q :q<cr>
" fast vimrc reloading
nmap <leader>v :so ~/.vimrc<cr>
