" Vim syntax file
" Language:	JPT (Java Server Pages + Aids)
" Maintainer:	lol
"

" quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif
if !exists("main_syntax")
  let main_syntax = 'jpt'
endif
" Source jsp syntax
runtime! syntax/jsp.vim
unlet b:current_syntax
" Next syntax items are case-sensitive
syn case match
syn include @jspJava syntax/java.vim

" adding jpt style comments
syn region jptComment start=/<!--/ end=/-->/
" matching jstl expressions in jpt tags
syn match jstlExp contained containedin=jptTag,htmlTag,javaString,htmlString "\${.*}"
"syn match jstlSigns contained containedin=javaString,jstlExp "\$|{|}"
" adding jpt tags
syn region jptTag start=/.*<[bg:|p:|tbg:]/ keepend end=/>/ end=/\/>/ contains=@jspJava,jstlExp

" linking
hi def link jptComment	 htmlComment
hi def link jptTag jspTag
hi def link jstlExp javaType

if main_syntax == 'jpt'
  unlet main_syntax
endif
let b:current_syntax = "jpt"
" vim: ts=8
