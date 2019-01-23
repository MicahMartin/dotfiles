" Vim syntax file
" Language:	JPT (Java Server Pages + Pain)
" Maintainer:	I dare you
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
" Syntax items are case-sensitive
syn case match

" Adding jpt style comments
syn region jptComment start=/<!--/ end=/-->/
" Gotta figure out a better way to recognize jpt tags. any time a new taglib is added this regex would need an update 
syn region jptTag start=/<[bg:|p:|tbg:]/ keepend end=/>/ end=/\/>/ contains=@jspJava,jstlExp
" match tag lib and tag name
syn match jptTagLibDecl contained containedin=jptTag /\v\<@<=\w+\:@=/ nextgroup=jptTagName
syn match jptTagName /\v[\:]<@=\w+/ contained
" lookbehind is a painnn
syn match jptColon /\v:/ containedin=jptTagName
" Matching jstl expressions in jpt tags. htmlJavaScript just looks good imo
syn match jstlExp contained containedin=jptTag,htmlTag,javaString,htmlString /\${.\{-}}/ contains=jstlWordedOperators
" For some reason lookbehind worked here, not even gonna bother trying to replicate
syn match xpathExp contained containedin=jptTag,javaString /\v"@<=\$[a-zA-Z]+\/\/.{-}"@=/
syn keyword jstlWordedOperators contained ne and not empty or eq lt gt le ge
syn keyword javaTodo contained containedin=jptComment,javaString TODO FIXME XXX
syn region jstlFunction start=/fn\:\w+(/ keepend end=/)/

" JspJava is included in syntax/jsp.vim from syntax/java.vim
hi def link jptComment	 htmlComment
hi def link jstlFunction SpecialComment
hi def link jptTag htmlTag
hi def link jptTagName Label
hi def link xpathExp SpecialComment
hi def link jptColon htmlTag
hi def link jstlWordedOperators Constant
hi def link javaTodo Todo
if main_syntax == "jpt"
  unlet main_syntax
endif
let b:current_syntax = "jpt"
" vim: ts=8
