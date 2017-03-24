
"""""""""""
" General "
"""""""""""



"""""""""""
" Airline "
"""""""""""
set laststatus=2
let g:airline_theme='term'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemod=':t'
let g:airline#extensions#tabline#buffer_nr_show=1
let g:airline_powerline_fonts=1

if !exists('g:airline_symbols')
	let g:airline_symbols={}
endif
" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

""""""""""""""""""
" Ultisnip / YCM "
""""""""""""""""""
let g:ycm_global_ycm_extra_conf = '/home/kai/Conf/vim/bundle/YouCompleteme/.ycm_extra_conf.py'

" expand snippets with ctrlJ
let g:UltiSnipsExpandTrigger="<c-j>"

" Nerd Tree
let g:NERDTreeShowHidden=1
let g:NERDTreeStatusline="%f"
let g:NERDTreeWinPos="right"
let g:NERDTreeWinSize=30
