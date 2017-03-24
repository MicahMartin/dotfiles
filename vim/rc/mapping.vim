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

" easily jump between splits
nmap <C-l> <C-w>l
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k

"""""""""""""""""""
" Code Completion "
"""""""""""""""""""

""""""""""""""""""""""""""
" File/Buffer Management "
""""""""""""""""""""""""""
nmap <C-b> :CtrlPBuffer<cr>
nmap <C-m> :CtrlPMRUFiles<cr>

""""""""
" Misc "
""""""""

" fast saving
nmap <leader>w :w!<cr>
