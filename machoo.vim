if exists("b:current_syntax")
  finish
endif

let s:cpo_save = &cpo
set cpo&vim
syn case ignore

" -----------------------------
" Comments
" -----------------------------
syn match MyComment "!.*$"
syn match MyComment "_.*$"

" -----------------------------
" Strings
" -----------------------------
syn region MyString start=+"+ skip=+\\\\\|\\"+ end=+"+
syn region MyString start=+'+ skip=+\\\\\|\\'+ end=+'+

" -----------------------------
" Numbers
" -----------------------------
syn match MyNumber "\<\d\+\>"
syn match MyNumber "\<0x\x\+\>"
syn match MyNumber "\<\d\+\.\d*\>"
syn match MyNumber "\<\d\+e[-+]\=\d\+\>"

" -----------------------------
" Operators
" -----------------------------
syn match MyOperator "[=+\-*/<>&]"
syn match MyOperator "eq"
syn match MyOperator "ne"
syn match MyOperator "gt"
syn match MyOperator "lt"

" -----------------------------
" Punctuation
" -----------------------------
syn match MyPunct "[()\[\]{};,\.]"

" -----------------------------
" Functions
" -----------------------------
syn match MyFunction "\<\h\w*\ze\s*("

" -----------------------------
" Labels
" -----------------------------
syn match MyLabel "^\s*\h\w*\s*:"
syn match MyLabel "^\s\{0,3}\d\+"

" -----------------------------
" Keywords
" -----------------------------
"
" Control Flow
syn keyword MyControl if and or else endif select when endselect
syn keyword MyControl repeat endrep while endwhile for to next break continue return again
syn keyword MyControl length set setuniq clear clearlocal clearcommon funcproto funcbegin funcend
syn keyword MyControl goto go gosub excp excpsub error
" syn keyword MyControl #ifndef #define #endif

" Decorations
syn keyword MyDecor local common ref format struct

" Constants
syn keyword MyConstant true false nomatch

" Goto

" -----------------------------
" Links
" -----------------------------
hi def link MyComment     Comment
hi def link MyString      String
hi def link MyNumber      Number
hi def link MyOperator    Operator
hi def link MyPunct       Delimiter
"hi def link MyFunction    Function
hi def link MyLabel       Label
hi def link MyControl     Conditional
hi def link MyDecor       Type
hi def link MyConstant    Constant

let b:current_syntax = "mylang"

let &cpo = s:cpo_save
unlet s:cpo_save
