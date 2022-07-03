" Name:     hydrangea.vim --- Hydrangea theme for Vim
" Author:   Yuta Taniguchi <yuta.taniguchi.y.t@gmail.com>
" URL:      https://github.com/yuttie/hydrangea-vim
" Version:  5.0.0
" License:  MIT License

hi clear
if exists('syntax_on')
  syntax reset
endif
let g:colors_name = 'hydrangea'

set background=dark

hi Normal ctermfg=252 ctermbg=235 guifg=#96a1b9 guibg=#171c26
hi Cursor ctermfg=NONE ctermbg=252 cterm=NONE guifg=NONE guibg=#d3def7 gui=NONE
hi CursorIM ctermfg=NONE ctermbg=252 guifg=NONE guibg=#d3def7
hi CursorLine ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#232833 gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#232833 gui=NONE
hi Visual ctermfg=NONE ctermbg=238 cterm=NONE guifg=NONE guibg=#303540 gui=NONE
hi VisualNOS cterm=underline guifg=fg gui=underline
hi Folded ctermfg=252 ctermbg=236 cterm=NONE guifg=#96a1b9 guibg=#232833 gui=NONE
hi FoldColumn ctermfg=252 ctermbg=235 cterm=NONE guifg=#96a1b9 guibg=#171c26 gui=NONE
hi Title ctermfg=162 ctermbg=NONE cterm=bold guifg=#a6549c guibg=NONE gui=bold
hi StatusLine ctermfg=252 ctermbg=238 cterm=NONE guifg=#96a1b9 guibg=#303540 gui=NONE
hi StatusLineNC ctermfg=241 ctermbg=236 cterm=NONE guifg=#4b505d guibg=#232833 gui=NONE
hi VertSplit ctermfg=236 ctermbg=236 cterm=NONE guifg=#232833 guibg=#232833 gui=NONE
hi LineNr ctermfg=241 ctermbg=236 cterm=NONE guifg=#4b505d guibg=#232833 gui=NONE
hi CursorLineNr ctermfg=252 ctermbg=241 cterm=bold guifg=#d3def7 guibg=#4b505d gui=bold
hi SpecialKey ctermfg=23 ctermbg=38 cterm=bold guifg=#023342 guibg=#0990b5 gui=bold
hi NonText ctermfg=241 ctermbg=235 cterm=NONE guifg=#4b505d guibg=#171c26 gui=NONE
hi MatchParen ctermfg=161 ctermbg=NONE cterm=bold guifg=#e91e63 guibg=NONE gui=bold
hi Comment ctermfg=252 cterm=NONE guifg=#465166 gui=NONE
hi Constant ctermfg=38 ctermbg=NONE cterm=NONE guifg=#0990b5 guibg=NONE gui=NONE
hi String ctermfg=0 ctermbg=0 cterm=NONE guifg=#0487d8 guibg=#002844 gui=NONE
hi Number ctermfg=38 ctermbg=23 cterm=NONE guifg=#0990b5 guibg=#023342 gui=NONE
hi Identifier ctermfg=252 cterm=NONE guifg=#96a1b9 gui=NONE
hi Function ctermfg=252 cterm=NONE guifg=#d3def7 gui=NONE
hi Statement ctermfg=68 cterm=bold guifg=#466bb6 gui=bold
hi Operator ctermfg=252 cterm=bold guifg=#d3def7 gui=bold
hi Include ctermfg=98 cterm=NONE guifg=#996ddb gui=NONE
hi PreProc ctermfg=183 cterm=NONE guifg=#c398fe gui=NONE
hi Type ctermfg=162 cterm=NONE guifg=#a6549c gui=NONE
hi StorageClass ctermfg=68 cterm=bold guifg=#466bb6 gui=bold
hi Structure ctermfg=162 cterm=NONE guifg=#a6549c gui=NONE
hi Typedef ctermfg=68 cterm=bold guifg=#466bb6 gui=bold
hi Special ctermfg=111 ctermbg=NONE cterm=bold guifg=#6d88ce guibg=NONE gui=bold
hi Underlined cterm=underline guifg=fg gui=underline
hi Ignore guifg=bg
hi Error ctermfg=161 ctermbg=52 cterm=bold guifg=#e91e63 guibg=#681c36 gui=bold
hi Todo ctermfg=106 ctermbg=NONE cterm=bold guifg=#98bf00 guibg=NONE gui=bold
hi IncSearch ctermfg=218 ctermbg=162 cterm=bold guifg=#f7c5ef guibg=#a6549c gui=bold
hi Search ctermfg=218 ctermbg=162 cterm=NONE guifg=#f7c5ef guibg=#a6549c gui=NONE
hi Pmenu ctermfg=252 ctermbg=236 cterm=NONE guifg=#96a1b9 guibg=#232833 gui=NONE
hi PmenuSel ctermfg=252 ctermbg=238 cterm=bold guifg=#d3def7 guibg=#303540 gui=bold
hi PmenuSbar ctermbg=236 cterm=NONE guibg=#232833 gui=NONE
hi PmenuThumb ctermbg=241 cterm=NONE guibg=#4b505d gui=NONE
hi TabLine ctermfg=252 ctermbg=235 cterm=NONE guifg=#96a1b9 guibg=#171c26 gui=NONE
hi TabLineSel ctermfg=235 ctermbg=162 cterm=bold guifg=#171c26 guibg=#a6549c gui=bold
hi TabLineFill ctermfg=252 ctermbg=235 cterm=NONE guifg=#96a1b9 guibg=#171c26 gui=NONE
hi SpellBad cterm=undercurl gui=undercurl
hi SpellCap cterm=undercurl gui=undercurl
hi SpellRare cterm=undercurl gui=undercurl
hi SpellLocal cterm=undercurl gui=undercurl
hi DiffAdd ctermfg=38 ctermbg=23 cterm=NONE guifg=#0990b5 guibg=#023342 gui=NONE
hi DiffDelete ctermfg=162 ctermbg=89 cterm=NONE guifg=#a6549c guibg=#4a1d45 gui=NONE
hi DiffChange ctermfg=98 ctermbg=98 cterm=NONE guifg=#996ddb guibg=#35264a gui=NONE
hi DiffText ctermfg=183 ctermbg=98 cterm=bold guifg=#c398fe guibg=#5b4182 gui=bold
hi Directory ctermfg=44 cterm=NONE guifg=#019c9c gui=NONE
hi ErrorMsg ctermfg=161 ctermbg=NONE cterm=NONE guifg=#e91e63 guibg=NONE gui=NONE
hi SignColumn ctermfg=252 ctermbg=236 cterm=NONE guifg=#96a1b9 guibg=#232833 gui=NONE
hi MoreMsg ctermfg=68 cterm=NONE guifg=#466bb6 gui=NONE
hi ModeMsg cterm=bold gui=bold
hi Question cterm=NONE guifg=fg gui=NONE
hi WarningMsg ctermfg=161 cterm=NONE guifg=#e91e63 gui=NONE
hi WildMenu ctermfg=252 ctermbg=241 cterm=bold guifg=#d3def7 guibg=#4b505d gui=bold
hi ColorColumn ctermfg=NONE ctermbg=52 cterm=NONE guifg=NONE guibg=#681c36 gui=NONE
hi TSDanger ctermfg=161 guifg=#e91e63
hi TSParameter ctermfg=0 guifg=#dafd89
hi GitGutterAdd ctermfg=38 ctermbg=236 cterm=bold guifg=#0990b5 guibg=#232833 gui=bold
hi GitGutterChange ctermfg=162 ctermbg=236 cterm=bold guifg=#a6549c guibg=#232833 gui=bold
hi GitGutterDelete ctermfg=162 ctermbg=236 cterm=bold guifg=#a6549c guibg=#232833 gui=bold
hi makeCommands NONE
hi phpIdentifier NONE
hi phpFunctions NONE
hi phpClasses NONE
hi rustFuncCall ctermfg=111 guifg=#6d88ce
hi vimVar NONE
hi link TSAttribute Special
hi link TSBoolean Constant
hi link TSCharacter Constant
hi link TSComment Comment
hi link TSConstructor Identifier
hi link TSConditional Statement
hi link TSConstant Constant
hi link TSConstBuiltin Constant
hi link TSConstMacro Constant
hi link TSError Error
hi link TSException Statement
hi link TSField Identifier
hi link TSFloat Constant
hi link TSFunction Function
hi link TSInclude Statement
hi link TSKeyword Statement
hi link TSKeywordFunction Statement
hi link TSLabel Special
hi link TSNamespace Constant
hi link TSNumber Number
hi link TSOperator Operator
hi link TSParameterReference Normal
hi link TSProperty TSField
hi link TSPunctDelimiter Normal
hi link TSPunctBracket Normal
hi link TSPunctSpecial Special
hi link TSRepeat Statement
hi link TSString String
hi link TSStringRegex String
hi link TSStringEscape Special
hi link TSTag htmlTagName
hi link TSTagAttribute htmlArg
hi link TSTagDelimiter htmlTagName
hi link TSText Normal
hi link TSTitle Title
hi link TSType Type
hi link TSTypeBuiltin Type
hi link TSVariable Identifier
hi link TSVariableBuiltin Statement
hi link TSWarning Todo
hi link makeIdent Type
hi link makeSpecTarget Special
hi link makeTarget Function
hi link makeCommands NONE
hi link phpVarSelector Identifier
hi link phpIdentifier NONE
hi link phpFunctions NONE
hi link phpClasses NONE
hi link phpFunction Function
hi link phpClass Type
hi link rustQuestionMark Operator
hi link vimVar NONE
