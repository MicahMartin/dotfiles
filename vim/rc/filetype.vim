autocmd FileType c set tags+=~/Conf/vim/tags/libc6
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'
	
augroup filetypedetect
	au BufNewFile,BufRead *.jsp set filetype=jsp
	au BufNewFile,BufRead *.jpt set filetype=jpt
	au BufNewFile,BufRead *.tag set filetype=jpt
augroup END
