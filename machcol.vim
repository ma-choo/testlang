" machoo.vim

set background=dark
hi clear

if exists('syntax_on')
    syntax reset
endif

let g:colors_name = 'machoo'

" 0d1f2c (bg)
" 8fc7ef (fg)
" ccf0fe (keyword)
" 1e89d6 (comment)
" 11507c (line number, color column) 
" 1e89d6 (accent)"

let s:bg  = '#0d1f2c' " Normal BG
let s:fg  = '#8fc7ef' " Normal FG
let s:co0 = '#0c3757' " ???
let s:co1 = '#11507c' " Line number, cursor column, inactive status
let s:co2 = '#1e89d6' " Comment
let s:co3 = '#62b0e8' " Accent, active status, literals
let s:co4 = '#8fc7ef' " Keyword
let s:co5 = '#4793cc' " Better accent
let s:co6 = '#ccf0fe' " Better keyword
let s:co7 = '#0d2b42' " Better CursorLine
let s:co8 = '#e86262' " Matching parent
let s:co9 = '#0a1b27' " LineNr BG
"let s:c10 = '#e8b062' " Literals
"let s:c10 = '#f2be74' " Literals (yellow)
let s:c10 = '#ff7b72' " Literals (red)

let s:dbg = '#ff00ff' " debug

let s:red     = '#e06c75'
let s:green   = '#98c379'
let s:blue    = '#8fc7ef'
let s:magenta = '#c688cd'
let s:cyan    = '#56b6c2'

"execute 'hi Normal       guifg=' . s:co3     . ' guibg=' . s:bg
execute 'hi Normal       guifg=' . s:fg      . ' guibg=' . s:bg
"execute 'hi StatusLine   guifg=' . s:co6     . ' guibg=' . s:co5
execute 'hi StatusLine   guifg=' . s:co6     . ' guibg=' . s:co5
execute 'hi StatusLineNC guifg=' . s:fg      . ' guibg=' . s:co0
execute 'hi VertSplit    guifg=' . s:co1     . ' guibg=' . s:bg
execute 'hi LineNr       guifg=' . s:co1     . ' guibg=' . s:bg
execute 'hi CursorLineNr guifg=' . s:co3     . ' guibg=' . s:co7
execute 'hi CursorLine                           guibg=' . s:co7
execute 'hi ColorColumn                          guibg=' . s:co0
execute 'hi MatchParen   guifg=' . s:bg      . ' guibg=' . s:co8
execute 'hi Whitespace   guifg=' . s:co1
execute 'hi NonText      guifg=' . s:co1     . ' guibg=NONE'
execute 'hi WildMenu     guifg=' . s:fg      . ' guibg=' . s:dbg
execute 'hi Search       guifg=' . s:co6     . ' guibg=' . s:co2
execute 'hi Folded       guifg=' . s:fg      . ' guibg=' . s:dbg
execute 'hi Visual                               guibg=' . s:co0
execute 'hi Pmenu        guifg=' . s:fg      . ' guibg=' . s:bg
execute 'hi PmenuSel     guifg=' . s:co5     . ' guibg=' . s:bg
execute 'hi TabLine      guifg=' . s:co1     . ' guibg=' . s:bg
execute 'hi TabLineSel   guifg=' . s:fg      . ' guibg=' . s:co7
execute 'hi TabLineFill  guifg=' . s:fg      . ' guibg=' . s:bg

hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC

execute 'hi Question guifg=' . s:co3

hi! link MoreMsg Question
hi! link FoldColumn Folded

execute 'hi SpellBad   gui=undercurl guisp=' . s:red
execute 'hi SpellRare  gui=undercurl guisp=' . s:magenta
execute 'hi SpellCap   gui=undercurl guisp=' . s:blue
execute 'hi SpellLocal gui=undercurl guisp=' . s:cyan

execute 'hi Comment    guifg=' . s:co2 . ' gui=italic'
execute 'hi Conditional guifg=' . s:co6 . ' gui=italic'
execute 'hi String     guifg=' . s:c10
execute 'hi Number     guifg=' . s:c10
execute 'hi Type       guifg=' . s:co6
execute 'hi PreProc    guifg=' . s:co6
execute 'hi Underlined guifg=' . s:fg . ' gui=underline'
execute 'hi Special    guifg=' . s:c10
execute 'hi Error      guifg=' . s:dbg .' guibg=#b04c55'

hi! link Operator     Normal
hi! link Identifier   Normal
hi! link Todo         Normal
hi! link Macro        PreProc
hi! link Statement    Type
hi! link Constant     Type
hi! link SpecialKey   Comment
hi! link Title        Type
hi! link Directory    Type
hi! link Function     Type
hi! link Character    String
hi! link ErrorMsg     Error

hi! link xmlAttrib  Normal
hi! link sqlKeyword Type

execute 'hi DiffAdd    guifg=' . s:green   . ' guibg=NONE'
execute 'hi DiffDelete guifg=' . s:red     . ' guibg=NONE'
execute 'hi DiffChange               guibg=' . s:bg
execute 'hi DiffText   guifg=' . s:fg      . ' guibg=#b04c55'

hi! link diffAdded   DiffAdd
hi! link diffRemoved DiffDelete
