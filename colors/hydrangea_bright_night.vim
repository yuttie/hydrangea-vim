" Name:     hydrangea.vim --- Hydrangea Bright Night theme for Vim
    " Author:   Yuta Taniguchi <yuta.taniguchi.y.t@gmail.com>
    " URL:      https://github.com/yuttie/hydrangea-vim
    " Version:  6.2.0
    " License:  MIT License
    
hi clear
    if exists('syntax_on')
    syntax reset
    endif
    let g:colors_name = 'hydrangea_bright_night'

    set background=dark
    
hi Normal ctermfg=225 ctermbg=53 guifg=#6d717d guibg=#1b1f28
hi NormalFloat ctermfg=133 ctermbg=53 guifg=#595d69 guibg=#1b1f28
hi FloatBorder ctermfg=133 ctermbg=53 guifg=#595d69 guibg=#1b1f28
hi Cursor ctermfg=NONE ctermbg=225 cterm=NONE guifg=NONE guibg=#6d717d gui=NONE
hi CursorIM ctermfg=NONE ctermbg=225 guifg=NONE guibg=#6d717d
hi CursorLine ctermfg=NONE ctermbg=133 cterm=NONE guifg=NONE guibg=#232731 gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=133 cterm=NONE guifg=NONE guibg=#232731 gui=NONE
hi Visual ctermfg=NONE ctermbg=133 cterm=NONE guifg=NONE guibg=#343843 gui=NONE
hi VisualNOS cterm=underline guifg=fg gui=underline
hi Folded ctermfg=133 ctermbg=133 cterm=NONE guifg=#595d69 guibg=#232731 gui=NONE
hi FoldColumn ctermfg=133 ctermbg=53 cterm=NONE guifg=#595d69 guibg=#1b1f28 gui=NONE
hi Title ctermfg=133 ctermbg=NONE cterm=bold guifg=#7e4c77 guibg=NONE gui=bold
hi StatusLine ctermfg=133 ctermbg=133 cterm=NONE guifg=#595d69 guibg=#343843 gui=NONE
hi StatusLineNC ctermfg=133 ctermbg=133 cterm=NONE guifg=#474b56 guibg=#232731 gui=NONE
hi VertSplit ctermfg=225 ctermbg=53 cterm=NONE guifg=#6d717d guibg=#1b1f28 gui=NONE
hi WinSeparator ctermfg=225 ctermbg=53 cterm=NONE guifg=#6d717d guibg=#1b1f28 gui=NONE
hi LineNr ctermfg=133 ctermbg=133 cterm=NONE guifg=#343843 guibg=#232731 gui=NONE
hi CursorLineNr ctermfg=133 ctermbg=133 cterm=bold guifg=#595d69 guibg=#343843 gui=bold
hi SpecialKey ctermfg=133 ctermbg=133 cterm=bold guifg=#003e53 guibg=#27647b gui=bold
hi NonText ctermfg=133 ctermbg=53 cterm=NONE guifg=#474b56 guibg=#1b1f28 gui=NONE
hi MatchParen ctermfg=133 ctermbg=NONE cterm=bold guifg=#bc2976 guibg=NONE gui=bold
hi Comment ctermfg=133 cterm=NONE guifg=#474b56 gui=NONE
hi Constant ctermfg=225 ctermbg=NONE cterm=NONE guifg=#3e788f guibg=NONE gui=NONE
hi String ctermfg=133 ctermbg=133 cterm=NONE guifg=#405f84 guibg=#002949 gui=NONE
hi Number ctermfg=133 ctermbg=133 cterm=NONE guifg=#27647b guibg=#002c40 gui=NONE
hi Identifier ctermfg=225 cterm=NONE guifg=#969aa7 gui=NONE
hi Function ctermfg=225 cterm=NONE guifg=#7f9cc4 gui=NONE
hi Statement ctermfg=133 cterm=bold guifg=#465c90 gui=bold
hi Operator ctermfg=225 cterm=bold guifg=#6d717d gui=bold
hi Include ctermfg=133 cterm=NONE guifg=#6f4aa7 gui=NONE
hi PreProc ctermfg=225 cterm=NONE guifg=#845dbd gui=NONE
hi Type ctermfg=225 cterm=NONE guifg=#935f8c gui=NONE
hi StorageClass ctermfg=133 cterm=bold guifg=#465c90 gui=bold
hi Structure ctermfg=133 cterm=NONE guifg=#7e4c77 gui=NONE
hi Typedef ctermfg=133 cterm=bold guifg=#465c90 gui=bold
hi Special ctermfg=225 ctermbg=NONE cterm=bold guifg=#5b70a6 guibg=NONE gui=bold
hi Underlined cterm=underline guifg=fg gui=underline
hi Ignore guifg=bg
hi Error ctermfg=133 ctermbg=53 cterm=bold guifg=#bc2976 guibg=#5f002b gui=bold
hi Todo ctermfg=225 ctermbg=133 cterm=bold guifg=#848a4f guibg=#343c03 gui=bold
hi IncSearch ctermfg=225 ctermbg=225 cterm=bold guifg=#bf88b7 guibg=#935f8c gui=bold
hi Search ctermfg=225 ctermbg=133 cterm=bold guifg=#bf88b7 guibg=#6a3964 gui=bold
hi Pmenu ctermfg=225 ctermbg=53 cterm=NONE guifg=#969aa7 guibg=#1b1f28 gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=133 cterm=bold guifg=NONE guibg=#232731 gui=bold
hi PmenuSbar ctermbg=53 cterm=NONE guibg=#1b1f28 gui=NONE
hi PmenuThumb ctermbg=225 cterm=NONE guibg=#6d717d gui=NONE
hi TabLine ctermfg=133 ctermbg=53 cterm=NONE guifg=#595d69 guibg=#1b1f28 gui=NONE
hi TabLineSel ctermfg=53 ctermbg=133 cterm=bold guifg=#1b1f28 guibg=#7e4c77 gui=bold
hi TabLineFill ctermfg=133 ctermbg=53 cterm=NONE guifg=#595d69 guibg=#1b1f28 gui=NONE
hi SpellBad cterm=undercurl gui=undercurl
hi SpellCap cterm=undercurl gui=undercurl
hi SpellRare cterm=undercurl gui=undercurl
hi SpellLocal cterm=undercurl gui=undercurl
hi DiffAdd ctermfg=NONE ctermbg=53 cterm=NONE guifg=NONE guibg=#002437 gui=NONE
hi DiffDelete ctermfg=133 ctermbg=53 cterm=NONE guifg=#552650 guibg=#380a35 gui=NONE
hi DiffChange ctermfg=NONE ctermbg=53 cterm=NONE guifg=NONE guibg=#24075e gui=NONE
hi DiffText ctermfg=NONE ctermbg=133 cterm=bold guifg=NONE guibg=#44247c gui=bold
hi diffAdded ctermfg=133 ctermbg=53 cterm=NONE guifg=#27647b guibg=#002437 gui=NONE
hi diffRemoved ctermfg=133 ctermbg=53 cterm=NONE guifg=#7e4c77 guibg=#380a35 gui=NONE
hi diffChanged ctermfg=133 ctermbg=53 cterm=NONE guifg=#6f4aa7 guibg=#24075e gui=NONE
hi Directory ctermfg=225 cterm=NONE guifg=#397f80 gui=NONE
hi ErrorMsg ctermfg=133 ctermbg=NONE cterm=NONE guifg=#bc2976 guibg=NONE gui=NONE
hi SignColumn ctermfg=133 ctermbg=133 cterm=NONE guifg=#595d69 guibg=#232731 gui=NONE
hi MoreMsg ctermfg=133 cterm=NONE guifg=#465c90 gui=NONE
hi ModeMsg cterm=bold gui=bold
hi Question cterm=NONE guifg=fg gui=NONE
hi WarningMsg ctermfg=133 cterm=NONE guifg=#bc2976 gui=NONE
hi WildMenu ctermfg=225 ctermbg=133 cterm=bold guifg=#6d717d guibg=#474b56 gui=bold
hi ColorColumn ctermfg=NONE ctermbg=133 cterm=NONE guifg=NONE guibg=#8d004f gui=NONE
hi @variable.parameter ctermfg=225 guifg=#9a9f62
hi @variable.parameter.builtin ctermfg=225 guifg=#9a9f62
hi DiagnosticError ctermfg=53 ctermbg=NONE cterm=NONE guifg=#5f002b guibg=NONE gui=NONE
hi DiagnosticWarn ctermfg=133 ctermbg=NONE cterm=NONE guifg=#44247c guibg=NONE gui=NONE
hi DiagnosticInfo ctermfg=133 ctermbg=NONE cterm=NONE guifg=#153a5c guibg=NONE gui=NONE
hi DiagnosticHint ctermfg=133 ctermbg=NONE cterm=NONE guifg=#343c03 guibg=NONE gui=NONE
hi BufferLineFill ctermbg=53 guibg=#131720
hi BufferLineSeparator ctermfg=133 ctermbg=53 guifg=#232731 guibg=#131720
hi BufferLineBackground ctermfg=133 ctermbg=53 guifg=#474b56 guibg=#131720
hi BufferLineCloseButton ctermfg=133 ctermbg=53 guifg=#474b56 guibg=#131720
hi BufferLineModified ctermfg=133 ctermbg=133 guifg=#6f4aa7 guibg=#232731
hi BufferLineSeparatorSelected ctermfg=133 ctermbg=53 guifg=#232731 guibg=#131720
hi BufferLineIndicatorSelected ctermfg=53 ctermbg=53 guifg=#1b1f28 guibg=#1b1f28
hi BufferLineBufferSelected ctermfg=225 ctermbg=53 cterm=NONE guifg=#6d717d guibg=#1b1f28 gui=NONE
hi BufferLineCloseButtonSelected ctermfg=225 ctermbg=53 guifg=#6d717d guibg=#1b1f28
hi BufferLineModifiedSelected ctermfg=133 ctermbg=53 guifg=#6f4aa7 guibg=#1b1f28
hi CmpItemAbbr ctermfg=133 guifg=#595d69
hi CmpItemAbbrDeprecated ctermfg=133 guifg=#474b56
hi CmpItemAbbrMatch ctermfg=225 guifg=#a973a1
hi CmpItemAbbrMatchFuzzy ctermfg=133 guifg=#bc2976
hi CmpItemKind ctermfg=133 guifg=#27647b
hi CmpItemMenu ctermfg=133 guifg=#593792
hi GitGutterAdd ctermfg=133 ctermbg=133 cterm=bold guifg=#27647b guibg=#232731 gui=bold
hi GitGutterChange ctermfg=133 ctermbg=133 cterm=bold guifg=#7e4c77 guibg=#232731 gui=bold
hi GitGutterDelete ctermfg=133 ctermbg=133 cterm=bold guifg=#7e4c77 guibg=#232731 gui=bold
hi LazyButton ctermfg=225 ctermbg=133 guifg=#969aa7 guibg=#343843
hi LazyButtonActive ctermfg=53 ctermbg=225 cterm=bold guifg=#1b1f28 guibg=#9a9f62 gui=bold
hi LazyComment ctermfg=225 ctermbg=NONE guifg=#557399 guibg=NONE
hi LazyH1 ctermfg=225 ctermbg=133 guifg=#a973a1 guibg=#6a3964
hi LazyH2 ctermfg=225 ctermbg=NONE guifg=#557399 guibg=NONE
hi LazyNormal ctermfg=225 ctermbg=133 guifg=#818592 guibg=#232731
hi LazySpecial ctermfg=225 ctermbg=NONE guifg=#c1c5d3 guibg=NONE
hi LazyTaskOutput ctermfg=225 ctermbg=133 guifg=#969aa7 guibg=#232731
hi makeCommands NONE
hi phpIdentifier NONE
hi phpFunctions NONE
hi phpClasses NONE
hi rustFuncCall ctermfg=225 guifg=#5b70a6
hi vimVar NONE
hi rainbowcol1 ctermfg=225 guifg=#6d717d
hi rainbowcol2 ctermfg=225 guifg=#848a4f
hi rainbowcol3 ctermfg=225 guifg=#397f80
hi rainbowcol4 ctermfg=225 guifg=#557399
hi rainbowcol5 ctermfg=133 guifg=#6f4aa7
hi rainbowcol6 ctermfg=133 guifg=#7e4c77
hi! link @variable Identifier
hi! link @variable.builtin Constant
hi! link @variable.member Identifier
hi! link @constant Constant
hi! link @constant.builtin Constant
hi! link @constant.macro Constant
hi! link @module Constant
hi! link @module.builtin Constant
hi! link @label Special
hi! link @string String
hi! link @string.documentation Special
hi! link @string.regexp String
hi! link @string.escape Special
hi! link @string.special Special
hi! link @string.special.symbol Special
hi! link @string.special.url Special
hi! link @string.special.path Special
hi! link @character Constant
hi! link @character.special Special
hi! link @boolean Constant
hi! link @number Number
hi! link @number.float Number
hi! link @type Type
hi! link @type.builtin Type
hi! link @type.definition Type
hi! link @attribute Special
hi! link @attribute.builtin Special
hi! link @property Identifier
hi! link @function Function
hi! link @function.builtin Function
hi! link @function.call Function
hi! link @function.macro Function
hi! link @function.method Function
hi! link @function.method.call Function
hi! link @constructor Identifier
hi! link @operator Operator
hi! link @keyword Statement
hi! link @keyword.coroutine Statement
hi! link @keyword.function Statement
hi! link @keyword.operator Statement
hi! link @keyword.import Statement
hi! link @keyword.type Statement
hi! link @keyword.modifier Statement
hi! link @keyword.repeat Statement
hi! link @keyword.return Statement
hi! link @keyword.debug Statement
hi! link @keyword.exception Statement
hi! link @keyword.conditional Statement
hi! link @keyword.conditional.ternary Statement
hi! link @keyword.directive Statement
hi! link @keyword.directive.define Statement
hi! link @punctuation.delimiter Normal
hi! link @punctuation.bracket Normal
hi! link @punctuation.special Special
hi! link @comment Comment
hi! link @comment.documentation Comment
hi! link @comment.error Error
hi! link @comment.warning Error
hi! link @comment.todo Todo
hi! link @comment.note Todo
hi! link LazyCommit @variable.builtin
hi! link LazyCommitIssue Number
hi! link LazyCommitScope Italic
hi! link LazyCommitType Title
hi! link LazyDimmed Conceal
hi! link LazyDir @markup.link
hi! link LazyLocal LineNr
hi! link LazyNoCond DiagnosticWarn
hi! link LazyProgressDone Constant
hi! link LazyProgressTodo LineNr
hi! link LazyProp Conceal
hi! link LazyReasonCmd @variable.parameter
hi! link LazyReasonEvent @variable.parameter
hi! link LazyReasonFt @variable.parameter
hi! link LazyReasonImport @variable.parameter
hi! link LazyReasonKeys @variable.parameter
hi! link LazyReasonPlugin @variable.parameter
hi! link LazyReasonRequire @variable.parameter
hi! link LazyReasonRuntime @variable.parameter
hi! link LazyReasonSource @variable.parameter
hi! link LazyReasonStart @variable.parameter
hi! link LazyTaskError ErrorMsg
hi! link LazyUrl @markup.link
hi! link LazyValue @string
hi! link makeIdent Type
hi! link makeSpecTarget Special
hi! link makeTarget Function
hi! link makeCommands NONE
hi! link phpVarSelector Identifier
hi! link phpIdentifier NONE
hi! link phpFunctions NONE
hi! link phpClasses NONE
hi! link phpFunction Function
hi! link phpClass Type
hi! link rustQuestionMark Operator
hi! link vimVar NONE
