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
" dir wide search and replace using easygrep
nmap <leader>s :Replace<SPACE>
" vimgrep(ag) current visual selection
" This will replace the text in the current register
vnoremap <C-g> y:Grep <C-R>"<CR>
" vimgrep with args
nnoremap <C-g> :Grep<SPACE>
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
map <leader>bd :bd<CR>

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
