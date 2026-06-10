" anang.vim

set background=dark
hi clear

if exists('syntax_on')
    syntax reset
endif

let g:colors_name = 'fakenord'

let s:bg0 = '#292e39'
let s:bg1 = '#2e3440'
let s:bg2 = '#3b4252'

let s:fg0 = '#4c566a'
let s:fg1 = '#c7cdd8'
let s:fg2 = '#eceff4'

let s:acc = '#51afef'
let s:cmt = '#657084'
let s:red = '#ff6c6b'

execute 'hi Normal       guifg=' . s:fg1 . ' guibg=' . s:bg1
execute 'hi StatusLine   guifg=' . s:fg2 . ' guibg=' . s:acc
execute 'hi StatusLineNC guifg=' . s:fg1 . ' guibg=' . s:bg2
execute 'hi VertSplit    guifg=' . s:fg0 . ' guibg=' . s:bg1
execute 'hi LineNr       guifg=' . s:fg0
execute 'hi CursorLineNr guifg=' . s:fg1 . ' guibg=' . s:bg0
execute 'hi CursorLine                       guibg=' . s:bg0
execute 'hi ColorColumn                      guibg=' . s:bg2
execute 'hi MatchParen   guifg=' . s:bg1 . ' guibg=' . s:red
execute 'hi Whitespace   guifg=' . s:fg0
execute 'hi NonText      guifg=' . s:fg0 . ' guibg=NONE'
execute 'hi WildMenu     guifg=' . s:fg1 . ' guibg=' . s:bg1
execute 'hi Search       guifg=' . s:fg2 . ' guibg=' . s:acc
execute 'hi Folded       guifg=' . s:fg1 . ' guibg=' . s:bg1
execute 'hi Visual                           guibg=' . s:bg2
execute 'hi Pmenu        guifg=' . s:fg1 . ' guibg=' . s:bg1
execute 'hi PmenuSel     guifg=' . s:fg1 . ' guibg=' . s:bg1
execute 'hi TabLine      guifg=' . s:fg0 . ' guibg=' . s:bg0
execute 'hi TabLineSel   guifg=' . s:fg1 . ' guibg=' . s:bg1
execute 'hi TabLineFill  guifg=' . s:fg0 . ' guibg=' . s:bg0

hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC

execute 'hi Question guifg=' . s:bg1

hi! link MoreMsg Question
hi! link FoldColumn Folded

execute 'hi SpellBad   gui=undercurl guisp=' . s:red
execute 'hi SpellRare  gui=undercurl guisp=' . s:acc
execute 'hi SpellCap   gui=undercurl guisp=' . s:acc
execute 'hi SpellLocal gui=undercurl guisp=' . s:acc

execute 'hi Comment     guifg=' . s:cmt . ' gui=italic'
execute 'hi Conditional guifg=' . s:fg2 . ' gui=italic'
execute 'hi String      guifg=' . s:acc
execute 'hi Number      guifg=' . s:acc
execute 'hi Type        guifg=' . s:fg2 . ' gui=bold'
execute 'hi PreProc     guifg=' . s:fg2
execute 'hi Underlined  guifg=' . s:fg1 . ' gui=underline'
execute 'hi Special     guifg=' . s:acc
execute 'hi Error       guifg=' . s:red

hi! link Operator    Normal
hi! link Identifier  Normal
hi! link Todo        Normal
hi! link Macro       PreProc
hi! link Statement   Type
hi! link Constant    Type
hi! link SpecialKey  Comment
hi! link Title       Type
hi! link Directory   Type
hi! link Function    Type
hi! link Character   String
hi! link ErrorMsg    Error

hi! link xmlAttrib  Normal
hi! link sqlKeyword Type

execute 'hi DiffAdd    guifg=' . s:acc . ' guibg=NONE'
execute 'hi DiffDelete guifg=' . s:red . ' guibg=NONE'
execute 'hi DiffChange                     guibg=' . s:bg1
execute 'hi DiffText   guifg=' . s:fg1 . ' guibg=' . s:acc

hi! link diffAdded   DiffAdd
hi! link diffRemoved DiffDelete
