if exists('b:did_indent')
    finish
endif

let b:did_indent = 1

let s:RE_LABEL = '^\s*\([A-Za-z_][A-Za-z0-9_]*:\|[0-9]\)'
let s:RE_PREPROC = '^\s*\%(length\|set\|use\|funcproto\|funcbegin)\>'
let s:RE_INDENT = '^\s*\%(if\|and\|repeat\|select\|when\|while\)\>'
let s:RE_DEDENT = '^\s*\%(endif\|endrep\|endselect\|endwhile\)\>'
let s:RE_LINE_CONTINUATION = '_\s*$'

setlocal indentkeys=o,O,0},;,=~use,=~length,=~set,=~endif,=~endrep,=~endselect,=~endwhile

setlocal indentexpr=QGetIndent()

function! QGetIndent() abort
    if v:lnum == 1
        return 0
    endif

    let this_line = getline(v:lnum)
    let prev_line = getline(v:lnum - 1)
    let prev_line = substitute(prev_line, '!.*$', '', '')
    let indent = indent(v:lnum - 1)
    let is_continued = (prev_line =~? s:RE_LINE_CONTINUATION)

    " Labels and preprocessor directives start at column 0.
    if this_line =~# s:RE_LABEL || this_line =~# s:RE_PREPROC
        return 0
    endif

    " Labels start the following block at column 5.
    if prev_line =~# s:RE_LABEL
        return 5
    endif

    " Closing keywords reduce indentation.
    if this_line =~# s:RE_DEDENT
        let indent -= 2
    endif

    " Opening keywords increase indentation.
    if prev_line =~# s:RE_INDENT && !is_continued
        let indent += 2
    endif

    return max([indent, 0])
endfunction
