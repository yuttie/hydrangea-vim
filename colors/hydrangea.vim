" Name:     hydrangea.vim --- Hydrangea theme for Vim
" Author:   Yuta Taniguchi <yuta.taniguchi.y.t@gmail.com>
" URL:      https://github.com/yuttie/hydrangea-vim
" Version:  6.0.0
" License:  MIT License

hi clear
if exists('syntax_on')
  syntax reset
endif
let g:colors_name = 'hydrangea'

set background=dark

hi Normal ctermfg=247 ctermbg=234 guifg=#96a1b9 guibg=#1b202a
hi Cursor ctermfg=NONE ctermbg=189 cterm=NONE guifg=NONE guibg=#d3def7 gui=NONE
hi CursorIM ctermfg=NONE ctermbg=189 guifg=NONE guibg=#d3def7
hi CursorLine ctermfg=NONE ctermbg=235 cterm=NONE guifg=NONE guibg=#232833 gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=235 cterm=NONE guifg=NONE guibg=#232833 gui=NONE
hi Visual ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#303540 gui=NONE
hi VisualNOS cterm=underline guifg=fg gui=underline
hi Folded ctermfg=247 ctermbg=235 cterm=NONE guifg=#96a1b9 guibg=#232833 gui=NONE
hi FoldColumn ctermfg=247 ctermbg=234 cterm=NONE guifg=#96a1b9 guibg=#1b202a gui=NONE
hi Title ctermfg=133 ctermbg=NONE cterm=bold guifg=#a6549c guibg=NONE gui=bold
hi StatusLine ctermfg=247 ctermbg=236 cterm=NONE guifg=#96a1b9 guibg=#303540 gui=NONE
hi StatusLineNC ctermfg=239 ctermbg=235 cterm=NONE guifg=#4b505d guibg=#232833 gui=NONE
hi VertSplit ctermfg=235 ctermbg=235 cterm=NONE guifg=#232833 guibg=#232833 gui=NONE
hi LineNr ctermfg=239 ctermbg=235 cterm=NONE guifg=#4b505d guibg=#232833 gui=NONE
hi CursorLineNr ctermfg=189 ctermbg=239 cterm=bold guifg=#d3def7 guibg=#4b505d gui=bold
hi SpecialKey ctermfg=236 ctermbg=31 cterm=bold guifg=#023342 guibg=#0990b5 gui=bold
hi NonText ctermfg=239 ctermbg=234 cterm=NONE guifg=#4b505d guibg=#1b202a gui=NONE
hi MatchParen ctermfg=197 ctermbg=NONE cterm=bold guifg=#e91e63 guibg=NONE gui=bold
hi Comment ctermfg=239 cterm=NONE guifg=#465166 gui=NONE
hi Constant ctermfg=31 ctermbg=NONE cterm=NONE guifg=#0990b5 guibg=NONE gui=NONE
hi String ctermfg=32 ctermbg=235 cterm=NONE guifg=#0487d8 guibg=#002844 gui=NONE
hi Number ctermfg=31 ctermbg=236 cterm=NONE guifg=#0990b5 guibg=#023342 gui=NONE
hi Identifier ctermfg=247 cterm=NONE guifg=#96a1b9 gui=NONE
hi Function ctermfg=189 cterm=NONE guifg=#d3def7 gui=NONE
hi Statement ctermfg=25 cterm=bold guifg=#466bb6 gui=bold
hi Operator ctermfg=189 cterm=bold guifg=#d3def7 gui=bold
hi Include ctermfg=98 cterm=NONE guifg=#996ddb gui=NONE
hi PreProc ctermfg=177 cterm=NONE guifg=#c398fe gui=NONE
hi Type ctermfg=133 cterm=NONE guifg=#a6549c gui=NONE
hi StorageClass ctermfg=25 cterm=bold guifg=#466bb6 gui=bold
hi Structure ctermfg=133 cterm=NONE guifg=#a6549c gui=NONE
hi Typedef ctermfg=25 cterm=bold guifg=#466bb6 gui=bold
hi Special ctermfg=68 ctermbg=NONE cterm=bold guifg=#6d88ce guibg=NONE gui=bold
hi Underlined cterm=underline guifg=fg gui=underline
hi Ignore guifg=bg
hi Error ctermfg=197 ctermbg=237 cterm=bold guifg=#e91e63 guibg=#681c36 gui=bold
hi Todo ctermfg=106 ctermbg=NONE cterm=bold guifg=#98bf00 guibg=NONE gui=bold
hi IncSearch ctermfg=225 ctermbg=133 cterm=bold guifg=#f7c5ef guibg=#a6549c gui=bold
hi Search ctermfg=225 ctermbg=133 cterm=NONE guifg=#f7c5ef guibg=#a6549c gui=NONE
hi Pmenu ctermfg=247 ctermbg=235 cterm=NONE guifg=#96a1b9 guibg=#232833 gui=NONE
hi PmenuSel ctermfg=189 ctermbg=236 cterm=bold guifg=#d3def7 guibg=#303540 gui=bold
hi PmenuSbar ctermbg=235 cterm=NONE guibg=#232833 gui=NONE
hi PmenuThumb ctermbg=239 cterm=NONE guibg=#4b505d gui=NONE
hi TabLine ctermfg=247 ctermbg=234 cterm=NONE guifg=#96a1b9 guibg=#1b202a gui=NONE
hi TabLineSel ctermfg=234 ctermbg=133 cterm=bold guifg=#1b202a guibg=#a6549c gui=bold
hi TabLineFill ctermfg=247 ctermbg=234 cterm=NONE guifg=#96a1b9 guibg=#1b202a gui=NONE
hi SpellBad cterm=undercurl gui=undercurl
hi SpellCap cterm=undercurl gui=undercurl
hi SpellRare cterm=undercurl gui=undercurl
hi SpellLocal cterm=undercurl gui=undercurl
hi DiffAdd ctermfg=31 ctermbg=236 cterm=NONE guifg=#0990b5 guibg=#023342 gui=NONE
hi DiffDelete ctermfg=133 ctermbg=53 cterm=NONE guifg=#a6549c guibg=#4a1d45 gui=NONE
hi DiffChange ctermfg=98 ctermbg=236 cterm=NONE guifg=#996ddb guibg=#35264a gui=NONE
hi DiffText ctermfg=177 ctermbg=60 cterm=bold guifg=#c398fe guibg=#5b4182 gui=bold
hi Directory ctermfg=37 cterm=NONE guifg=#019c9c gui=NONE
hi ErrorMsg ctermfg=197 ctermbg=NONE cterm=NONE guifg=#e91e63 guibg=NONE gui=NONE
hi SignColumn ctermfg=247 ctermbg=235 cterm=NONE guifg=#96a1b9 guibg=#232833 gui=NONE
hi MoreMsg ctermfg=25 cterm=NONE guifg=#466bb6 gui=NONE
hi ModeMsg cterm=bold gui=bold
hi Question cterm=NONE guifg=fg gui=NONE
hi WarningMsg ctermfg=197 cterm=NONE guifg=#e91e63 gui=NONE
hi WildMenu ctermfg=189 ctermbg=239 cterm=bold guifg=#d3def7 guibg=#4b505d gui=bold
hi ColorColumn ctermfg=NONE ctermbg=237 cterm=NONE guifg=NONE guibg=#681c36 gui=NONE
hi TSDanger ctermfg=197 guifg=#e91e63
hi TSParameter ctermfg=192 guifg=#dafd89
hi GitGutterAdd ctermfg=31 ctermbg=235 cterm=bold guifg=#0990b5 guibg=#232833 gui=bold
hi GitGutterChange ctermfg=133 ctermbg=235 cterm=bold guifg=#a6549c guibg=#232833 gui=bold
hi GitGutterDelete ctermfg=133 ctermbg=235 cterm=bold guifg=#a6549c guibg=#232833 gui=bold
hi makeCommands NONE
hi phpIdentifier NONE
hi phpFunctions NONE
hi phpClasses NONE
hi rustFuncCall ctermfg=68 guifg=#6d88ce
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
