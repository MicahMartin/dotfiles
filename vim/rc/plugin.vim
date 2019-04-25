
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
let g:ycm_global_ycm_extra_conf = '/Users/martin/dev/dotfiles/vim/rc/.ycm_extra_conf.py'
let g:ycm_server_python_interpreter = '/usr/local/opt/python3/bin/python3'
let g:ycm_python_binary_path = 'python3'
let g:ycm_collect_identifiers_from_tags_files = 1
""""""""""
"Pls work"
""""""""""
let g:ycm_semantic_triggers =  {
  \   'c' : ['->', '.'],
  \   'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
  \             're!\[.*\]\s'],
  \   'ocaml' : ['.', '#'],
  \   'cpp,objcpp' : ['->', '.', '::'],
  \   'perl' : ['->'],
  \   'php' : ['->', '::'],
  \   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go,groovy' : ['.'],
  \   'ruby' : ['.', '::'],
  \   'lua' : ['.', ':'],
  \   'erlang' : [':'],
  \ }

" YCM will autoclose the preview window when we get out of insert mode.
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_confirm_extra_conf = 0

" expand snippets with ctrlJ
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsUsePythonVersion = 3

" setting search dir
"let g:UltiSnipsSnippetDirectories=["UltiSnips, cust-snips"]

"""""""""""""
" Nerd Tree "
"""""""""""""
let g:NERDTreeShowHidden=1
let g:NERDTreeStatusline="%f"
let g:NERDTreeWinPos="right"
let g:NERDTreeWinSize=30

let g:NERDTreeIgnore = ['\.class$', '\.exe$']

"""""""""""""
" Syntastic "
"""""""""""""

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"
"let g:syntastic_check_on_open = 1
""let g:syntastic_c_remove_include_errors = 1
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"
"let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': ['javascript', 'javascript.jsx'],'passive_filetypes': [] }
"let g:syntastic_javascript_checkers=['eslint']
"let g:syntastic_java_checkers=[]
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"
"let g:jsx_ext_required = 0

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
" Easy grep "
"""""""""""""
let g:EasyGrepCommand=1
let g:EasyGrepJumpToMatch=0
let g:EasyGrepPerlStyle=1

""""""""""""""
" IndentLine "
""""""""""""""
let g:indentLine_enabled = 0

""""""""""""""""
" NERDcomments "
""""""""""""""""

let g:NERDDefaultAlign = 'left'

""""""""""""""""
" Vim-CloseTag "
""""""""""""""""
let g:closetag_filenames = '*.html,*.xhtml,*.phtml, *.xml, *.jsp, *.jpt, *.jpp, *.tag, *.js'
