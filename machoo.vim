if exists("b:current_syntax")
  finish
endif

" =========================
" COMMENTS
" =========================
syntax match machooCommentExclamation /!.*$/
syntax match machooCommentUnderscore /_.*$/

highlight link machooCommentExclamation Comment
highlight link machooCommentUnderscore Comment


" =========================
" KEYWORDS
" =========================
syntax keyword machooKeywordControl if and or then else endif while endwhile for next select when endselect return continue ifndef define again
syntax keyword machooKeywordModifier length set setuniq local common format clear
syntax keyword machooKeywordFS file close key ind
syntax keyword machooKeywordFunc FuncProto FuncEnd
syntax keyword machooKeywordGoto goto go gosub excp excpsub
syntax keyword machooBoolean true false

highlight link machooKeywordControl Keyword
highlight link machooKeywordModifier Statement
highlight link machooKeywordFS Statement
highlight link machooKeywordFunc Keyword
highlight link machooKeywordGoto Special
highlight link machooBoolean Boolean


" =========================
" LABELS
" =========================
syntax match machooLabelDefine /^[A-Za-z][A-Za-z0-9]*:/
syntax match machooLabelRef /\v(goto|go|gosub|excp|excpsub)\s+[A-Za-z][A-Za-z0-9]*/

highlight link machooLabelDefine Label
highlight link machooLabelRef Label


" =========================
" FUNCTIONS
" =========================

" function definition: funcbegin name
syntax match machooFuncDef /\c\<funcbegin\>\s\+\w\+/
syntax match machooFuncName /\c\<funcbegin\>\s\+\zs\w\+/

highlight link machooFuncDef Keyword
highlight link machooFuncName Function


" function calls: name(...)
syntax match machooFuncCall /\w\+\ze(/
highlight link machooFuncCall Function


" =========================
" STRINGS
" =========================
syntax region machooStringDouble start=/"/ end=/"/ contains=machooEscape
syntax region machooStringSingle start=/'/ end=/'/

syntax match machooEscape /""/ contained

highlight link machooStringDouble String
highlight link machooStringSingle String
highlight link machooEscape SpecialChar


" =========================
" NUMBERS
" =========================
syntax match machooNumber /\v\d+(\.\d+)?/

highlight link machooNumber Number


" =========================
" OPERATORS
" =========================
syntax keyword machooOperator eq ne gt lt ge le
syntax match machooOperatorSymbol /[-+*/=<>&|@]\+/

highlight link machooOperator Operator
highlight link machooOperatorSymbol Operator


" =========================
" PUNCTUATION
" =========================
syntax match machooPunct /[;,_]/
syntax match machooParen /[()]/

highlight link machooPunct Delimiter
highlight link machooParen Delimiter


let b:current_syntax = "machoo"
