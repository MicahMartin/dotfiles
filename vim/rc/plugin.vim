
"""""""""""
" General "
"""""""""""



"""""""""""
" Airline "
"""""""""""
set laststatus=2
"let g:airline_theme='distinguished'
let g:airline_theme='base16color'
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

"""""""""""""
" Nerd Tree "
"""""""""""""
let g:NERDTreeShowHidden=1
let g:NERDTreeStatusline="%f"
let g:NERDTreeWinPos="right"
let g:NERDTreeWinSize=30

let g:NERDTreeIgnore = ['\.class$', '\.exe$']

"""""""""
" CtrlP "
"""""""""
let g:ctrlp_working_path_mode = '0'
if exists("g:ctrlp_user_command")
  unlet g:ctrlp_user_command
endif
set wildignore+=*.class
let g:ctrlp_custom_ignore = {
  \ 'dir': '\v[\/](node_modules)$',
  \ 'file': '\v\.(class)$',
  \ }
let g:ctrlp_extensions = ['tag']

"""""""""""""
" Ultisnips "
"""""""""""""
let g:BASH_Ctrl_k = "off"
let g:UltiSnipsExpandTrigger = "<c-j>"
let g:UltiSnipsUsePythonVersion = 2

"""""""""""""
" Deoplete "
let g:deoplete#enable_at_startup = 1
