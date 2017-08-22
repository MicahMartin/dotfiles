
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

""""""""""""""""""
" Ultisnip / YCM "
""""""""""""""""""
let g:ycm_global_ycm_extra_conf = '/Users/martin/dev/dotfiles/vim/bundle/YouCompleteme/.ycm_extra_conf.py'
let g:ycm_server_python_interpreter = '/usr/local/opt/python3/bin/python3'
" YCM will autoclose the preview window when we get out of insert mode.
let g:ycm_autoclose_preview_window_after_insertion = 1

" expand snippets with ctrlJ
let g:UltiSnipsExpandTrigger="<c-j>"

"""""""""""""
" Nerd Tree "
"""""""""""""
let g:NERDTreeShowHidden=1
let g:NERDTreeStatusline="%f"
let g:NERDTreeWinPos="right"
let g:NERDTreeWinSize=30

"""""""""""""
" Syntastic "
"""""""""""""

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_check_on_open = 0
let g:syntastic_c_remove_include_errors = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1

let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
nnoremap <C-w>E :SyntasticCheck<CR> :SyntasticToggleMode<CR>

"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

"""""""""
" CtrlP "
"""""""""
let g:ctrlp_working_path_mode = '0'
if exists("g:ctrlp_user_command")
  unlet g:ctrlp_user_command
endif
let g:ctrlp_custom_ignore = '\v[\/]\node_modules$'

"""""""""""""
" Easy grep "
"""""""""""""
let g:EasyGrepCommand=1
let g:EasyGrepJumpToMatch=0
let g:EasyGrepPerlStyle=1

""""""""""""""
" IndentLine "
""""""""""""""
let g:indentLine_enabled = 0
