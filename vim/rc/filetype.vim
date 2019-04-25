" add libc6 to tagStack for all c family fileTypes
autocmd FileType c set tags+=~/Conf/vim/tags/libc6


" wtf is a jpt anyway
augroup filetypedetect
	au BufNewFile,BufRead *.jsp set filetype=jsp
	au BufNewFile,BufRead *.jpt set filetype=jsp
	au BufNewFile,BufRead *.tag set filetype=jsp
augroup END
