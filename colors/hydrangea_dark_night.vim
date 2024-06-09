" Name:     hydrangea.vim --- Hydrangea Dark Night theme for Vim
    " Author:   Yuta Taniguchi <yuta.taniguchi.y.t@gmail.com>
    " URL:      https://github.com/yuttie/hydrangea-vim
    " Version:  6.2.0
    " License:  MIT License
    
hi clear
    if exists('syntax_on')
    syntax reset
    endif
    let g:colors_name = 'hydrangea_dark_night'

    set background=dark
    
hi Normal ctermfg=225 ctermbg=53 guifg=#5a5d6a guibg=#090c19
hi NormalFloat ctermfg=133 ctermbg=53 guifg=#474a56 guibg=#090c19
hi FloatBorder ctermfg=133 ctermbg=53 guifg=#474a56 guibg=#090c19
hi Cursor ctermfg=NONE ctermbg=225 cterm=NONE guifg=NONE guibg=#5a5d6a gui=NONE
hi CursorIM ctermfg=NONE ctermbg=225 guifg=NONE guibg=#5a5d6a
hi CursorLine ctermfg=NONE ctermbg=133 cterm=NONE guifg=NONE guibg=#131621 gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=133 cterm=NONE guifg=NONE guibg=#131621 gui=NONE
hi Visual ctermfg=NONE ctermbg=133 cterm=NONE guifg=NONE guibg=#232632 gui=NONE
hi VisualNOS cterm=underline guifg=fg gui=underline
hi Folded ctermfg=133 ctermbg=133 cterm=NONE guifg=#474a56 guibg=#131621 gui=NONE
hi FoldColumn ctermfg=133 ctermbg=53 cterm=NONE guifg=#474a56 guibg=#090c19 gui=NONE
hi Title ctermfg=133 ctermbg=NONE cterm=bold guifg=#6a3964 guibg=NONE gui=bold
hi StatusLine ctermfg=133 ctermbg=133 cterm=NONE guifg=#474a56 guibg=#232632 gui=NONE
hi StatusLineNC ctermfg=133 ctermbg=133 cterm=NONE guifg=#353843 guibg=#131621 gui=NONE
hi VertSplit ctermfg=225 ctermbg=53 cterm=NONE guifg=#5a5d6a guibg=#090c19 gui=NONE
hi WinSeparator ctermfg=225 ctermbg=53 cterm=NONE guifg=#5a5d6a guibg=#090c19 gui=NONE
hi LineNr ctermfg=133 ctermbg=133 cterm=NONE guifg=#232632 guibg=#131621 gui=NONE
hi CursorLineNr ctermfg=133 ctermbg=133 cterm=bold guifg=#474a56 guibg=#232632 gui=bold
hi SpecialKey ctermfg=133 ctermbg=133 cterm=bold guifg=#002d41 guibg=#1d5167 gui=bold
hi NonText ctermfg=133 ctermbg=53 cterm=NONE guifg=#353843 guibg=#090c19 gui=NONE
hi MatchParen ctermfg=133 ctermbg=NONE cterm=bold guifg=#a52462 guibg=NONE gui=bold
hi Comment ctermfg=133 cterm=NONE guifg=#353843 gui=NONE
hi Constant ctermfg=225 ctermbg=NONE cterm=NONE guifg=#34647b guibg=NONE gui=NONE
hi String ctermfg=133 ctermbg=133 cterm=NONE guifg=#2c4d70 guibg=#001937 gui=NONE
hi Number ctermfg=133 ctermbg=133 cterm=NONE guifg=#1d5167 guibg=#001c2f gui=NONE
hi Identifier ctermfg=225 cterm=NONE guifg=#818492 gui=NONE
hi Function ctermfg=225 cterm=NONE guifg=#6a88af gui=NONE
hi Statement ctermfg=133 cterm=bold guifg=#31497b gui=bold
hi Operator ctermfg=225 cterm=bold guifg=#5a5d6a gui=bold
hi Include ctermfg=133 cterm=NONE guifg=#593792 gui=NONE
hi PreProc ctermfg=225 cterm=NONE guifg=#6e4aa7 gui=NONE
hi Type ctermfg=225 cterm=NONE guifg=#7e4c78 gui=NONE
hi StorageClass ctermfg=133 cterm=bold guifg=#31497b gui=bold
hi Structure ctermfg=133 cterm=NONE guifg=#6a3964 gui=NONE
hi Typedef ctermfg=133 cterm=bold guifg=#31497b gui=bold
hi Special ctermfg=225 ctermbg=NONE cterm=bold guifg=#465c8f guibg=NONE gui=bold
hi Underlined cterm=underline guifg=fg gui=underline
hi Ignore guifg=bg
hi Error ctermfg=133 ctermbg=53 cterm=bold guifg=#a52462 guibg=#4a001a gui=bold
hi Todo ctermfg=225 ctermbg=133 cterm=bold guifg=#6f753b guibg=#252a00 gui=bold
hi IncSearch ctermfg=225 ctermbg=225 cterm=bold guifg=#a974a1 guibg=#7e4c78 gui=bold
hi Search ctermfg=225 ctermbg=133 cterm=bold guifg=#a974a1 guibg=#562650 gui=bold
hi Pmenu ctermfg=225 ctermbg=53 cterm=NONE guifg=#818492 guibg=#090c19 gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=133 cterm=bold guifg=NONE guibg=#131621 gui=bold
hi PmenuSbar ctermbg=53 cterm=NONE guibg=#090c19 gui=NONE
hi PmenuThumb ctermbg=225 cterm=NONE guibg=#5a5d6a gui=NONE
hi TabLine ctermfg=133 ctermbg=53 cterm=NONE guifg=#474a56 guibg=#090c19 gui=NONE
hi TabLineSel ctermfg=53 ctermbg=133 cterm=bold guifg=#090c19 guibg=#6a3964 gui=bold
hi TabLineFill ctermfg=133 ctermbg=53 cterm=NONE guifg=#474a56 guibg=#090c19 gui=NONE
hi SpellBad cterm=undercurl gui=undercurl
hi SpellCap cterm=undercurl gui=undercurl
hi SpellRare cterm=undercurl gui=undercurl
hi SpellLocal cterm=undercurl gui=undercurl
hi DiffAdd ctermfg=NONE ctermbg=53 cterm=NONE guifg=NONE guibg=#001526 gui=NONE
hi DiffDelete ctermfg=133 ctermbg=53 cterm=NONE guifg=#42143e guibg=#270024 gui=NONE
hi DiffChange ctermfg=NONE ctermbg=53 cterm=NONE guifg=NONE guibg=#0c004b gui=NONE
hi DiffText ctermfg=NONE ctermbg=133 cterm=bold guifg=NONE guibg=#2e1268 gui=bold
hi diffAdded ctermfg=133 ctermbg=53 cterm=NONE guifg=#1d5167 guibg=#001526 gui=NONE
hi diffRemoved ctermfg=133 ctermbg=53 cterm=NONE guifg=#6a3964 guibg=#270024 gui=NONE
hi diffChanged ctermfg=133 ctermbg=53 cterm=NONE guifg=#593792 guibg=#0c004b gui=NONE
hi Directory ctermfg=225 cterm=NONE guifg=#326b6c gui=NONE
hi ErrorMsg ctermfg=133 ctermbg=NONE cterm=NONE guifg=#a52462 guibg=NONE gui=NONE
hi SignColumn ctermfg=133 ctermbg=133 cterm=NONE guifg=#474a56 guibg=#131621 gui=NONE
hi MoreMsg ctermfg=133 cterm=NONE guifg=#31497b gui=NONE
hi ModeMsg cterm=bold gui=bold
hi Question cterm=NONE guifg=fg gui=NONE
hi WarningMsg ctermfg=133 cterm=NONE guifg=#a52462 gui=NONE
hi WildMenu ctermfg=225 ctermbg=133 cterm=bold guifg=#5a5d6a guibg=#353843 gui=bold
hi ColorColumn ctermfg=NONE ctermbg=133 cterm=NONE guifg=NONE guibg=#77003c gui=NONE
hi @variable.parameter ctermfg=225 guifg=#84894e
hi @variable.parameter.builtin ctermfg=225 guifg=#84894e
hi DiagnosticError ctermfg=53 ctermbg=NONE cterm=NONE guifg=#4a001a guibg=NONE gui=NONE
hi DiagnosticWarn ctermfg=133 ctermbg=NONE cterm=NONE guifg=#2e1268 guibg=NONE gui=NONE
hi DiagnosticInfo ctermfg=133 ctermbg=NONE cterm=NONE guifg=#002949 guibg=NONE gui=NONE
hi DiagnosticHint ctermfg=133 ctermbg=NONE cterm=NONE guifg=#252a00 guibg=NONE gui=NONE
hi BufferLineFill ctermbg=53 guibg=#000010
hi BufferLineSeparator ctermfg=133 ctermbg=53 guifg=#131621 guibg=#000010
hi BufferLineBackground ctermfg=133 ctermbg=53 guifg=#353843 guibg=#000010
hi BufferLineCloseButton ctermfg=133 ctermbg=53 guifg=#353843 guibg=#000010
hi BufferLineModified ctermfg=133 ctermbg=133 guifg=#593792 guibg=#131621
hi BufferLineSeparatorSelected ctermfg=133 ctermbg=53 guifg=#131621 guibg=#000010
hi BufferLineIndicatorSelected ctermfg=53 ctermbg=53 guifg=#090c19 guibg=#090c19
hi BufferLineBufferSelected ctermfg=225 ctermbg=53 cterm=NONE guifg=#5a5d6a guibg=#090c19 gui=NONE
hi BufferLineCloseButtonSelected ctermfg=225 ctermbg=53 guifg=#5a5d6a guibg=#090c19
hi BufferLineModifiedSelected ctermfg=133 ctermbg=53 guifg=#593792 guibg=#090c19
hi CmpItemAbbr ctermfg=133 guifg=#474a56
hi CmpItemAbbrDeprecated ctermfg=133 guifg=#353843
hi CmpItemAbbrMatch ctermfg=225 guifg=#93608c
hi CmpItemAbbrMatchFuzzy ctermfg=133 guifg=#a52462
hi CmpItemKind ctermfg=133 guifg=#1d5167
hi CmpItemMenu ctermfg=133 guifg=#44247c
hi GitGutterAdd ctermfg=133 ctermbg=133 cterm=bold guifg=#1d5167 guibg=#131621 gui=bold
hi GitGutterChange ctermfg=133 ctermbg=133 cterm=bold guifg=#6a3964 guibg=#131621 gui=bold
hi GitGutterDelete ctermfg=133 ctermbg=133 cterm=bold guifg=#6a3964 guibg=#131621 gui=bold
hi LazyButton ctermfg=225 ctermbg=133 guifg=#818492 guibg=#232632
hi LazyButtonActive ctermfg=53 ctermbg=225 cterm=bold guifg=#090c19 guibg=#84894e gui=bold
hi LazyComment ctermfg=225 ctermbg=NONE guifg=#416085 guibg=NONE
hi LazyH1 ctermfg=225 ctermbg=133 guifg=#93608c guibg=#562650
hi LazyH2 ctermfg=225 ctermbg=NONE guifg=#416085 guibg=NONE
hi LazyNormal ctermfg=225 ctermbg=133 guifg=#6d707e guibg=#131621
hi LazySpecial ctermfg=225 ctermbg=NONE guifg=#acafbd guibg=NONE
hi LazyTaskOutput ctermfg=225 ctermbg=133 guifg=#818492 guibg=#131621
hi makeCommands NONE
hi phpIdentifier NONE
hi phpFunctions NONE
hi phpClasses NONE
hi rustFuncCall ctermfg=225 guifg=#465c8f
hi vimVar NONE
hi rainbowcol1 ctermfg=225 guifg=#5a5d6a
hi rainbowcol2 ctermfg=225 guifg=#6f753b
hi rainbowcol3 ctermfg=225 guifg=#326b6c
hi rainbowcol4 ctermfg=225 guifg=#416085
hi rainbowcol5 ctermfg=133 guifg=#593792
hi rainbowcol6 ctermfg=133 guifg=#6a3964
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
