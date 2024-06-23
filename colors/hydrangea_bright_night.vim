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
    
hi Normal ctermfg=225 ctermbg=53 guifg=#818592 guibg=#2c303a
hi NormalFloat ctermfg=133 ctermbg=53 guifg=#6d717e guibg=#2c303a
hi FloatBorder ctermfg=133 ctermbg=53 guifg=#6d717e guibg=#2c303a
hi Cursor ctermfg=NONE ctermbg=225 cterm=NONE guifg=NONE guibg=#818592 gui=NONE
hi CursorIM ctermfg=NONE ctermbg=225 guifg=NONE guibg=#818592
hi CursorLine ctermfg=NONE ctermbg=133 cterm=NONE guifg=NONE guibg=#343843 gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=133 cterm=NONE guifg=NONE guibg=#343843 gui=NONE
hi Visual ctermfg=NONE ctermbg=133 cterm=NONE guifg=NONE guibg=#474b56 gui=NONE
hi VisualNOS cterm=underline guifg=fg gui=underline
hi Folded ctermfg=133 ctermbg=133 cterm=NONE guifg=#6d717e guibg=#343843 gui=NONE
hi FoldColumn ctermfg=133 ctermbg=53 cterm=NONE guifg=#6d717e guibg=#2c303a gui=NONE
hi Title ctermfg=133 ctermbg=NONE cterm=bold guifg=#94608c guibg=NONE gui=bold
hi StatusLine ctermfg=133 ctermbg=133 cterm=NONE guifg=#6d717e guibg=#474b56 gui=NONE
hi StatusLineNC ctermfg=133 ctermbg=133 cterm=NONE guifg=#595e6a guibg=#343843 gui=NONE
hi VertSplit ctermfg=225 ctermbg=53 cterm=NONE guifg=#818592 guibg=#2c303a gui=NONE
hi WinSeparator ctermfg=225 ctermbg=53 cterm=NONE guifg=#818592 guibg=#2c303a gui=NONE
hi LineNr ctermfg=133 ctermbg=133 cterm=NONE guifg=#474b56 guibg=#343843 gui=NONE
hi CursorLineNr ctermfg=133 ctermbg=133 cterm=bold guifg=#6d717e guibg=#474b56 gui=bold
hi SpecialKey ctermfg=133 ctermbg=133 cterm=bold guifg=#085166 guibg=#3d788f gui=bold
hi NonText ctermfg=133 ctermbg=NONE cterm=NONE guifg=#595e6a guibg=NONE gui=NONE
hi MatchParen ctermfg=133 ctermbg=NONE cterm=bold guifg=#d62d8a guibg=NONE gui=bold
hi Comment ctermfg=133 cterm=NONE guifg=#595e6a gui=NONE
hi Constant ctermfg=225 ctermbg=NONE cterm=NONE guifg=#538da4 guibg=NONE gui=NONE
hi String ctermfg=133 ctermbg=133 cterm=NONE guifg=#557399 guibg=#153a5c gui=NONE
hi Number ctermfg=133 ctermbg=133 cterm=NONE guifg=#3d788f guibg=#003f53 gui=NONE
hi Identifier ctermfg=225 cterm=NONE guifg=#abb0bd gui=NONE
hi Function ctermfg=225 cterm=NONE guifg=#95b2db gui=NONE
hi Statement ctermfg=133 cterm=bold guifg=#5b70a5 gui=bold
hi Operator ctermfg=225 cterm=bold guifg=#818592 gui=bold
hi Include ctermfg=133 cterm=NONE guifg=#845dbd gui=NONE
hi PreProc ctermfg=225 cterm=NONE guifg=#9a71d4 gui=NONE
hi Type ctermfg=225 cterm=NONE guifg=#a974a1 gui=NONE
hi StorageClass ctermfg=133 cterm=bold guifg=#5b70a5 gui=bold
hi Structure ctermfg=133 cterm=NONE guifg=#94608c gui=NONE
hi Typedef ctermfg=133 cterm=bold guifg=#5b70a5 gui=bold
hi Special ctermfg=225 ctermbg=NONE cterm=bold guifg=#7084bb guibg=NONE gui=bold
hi Underlined cterm=underline guifg=fg gui=underline
hi Ignore guifg=bg
hi Error ctermfg=133 ctermbg=53 cterm=bold guifg=#d62d8a guibg=#77003c gui=bold
hi Todo ctermfg=225 ctermbg=133 cterm=bold guifg=#97a063 guibg=#454f17 gui=bold
hi IncSearch ctermfg=225 ctermbg=225 cterm=bold guifg=#d69ecd guibg=#a974a1 gui=bold
hi Search ctermfg=225 ctermbg=133 cterm=bold guifg=#d69ecd guibg=#7e4d78 gui=bold
hi Pmenu ctermfg=225 ctermbg=53 cterm=NONE guifg=#abb0bd guibg=#2c303a gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=133 cterm=bold guifg=NONE guibg=#343843 gui=bold
hi PmenuSbar ctermbg=53 cterm=NONE guibg=#2c303a gui=NONE
hi PmenuThumb ctermbg=225 cterm=NONE guibg=#818592 gui=NONE
hi TabLine ctermfg=133 ctermbg=53 cterm=NONE guifg=#6d717e guibg=#2c303a gui=NONE
hi TabLineSel ctermfg=53 ctermbg=133 cterm=bold guifg=#2c303a guibg=#94608c gui=bold
hi TabLineFill ctermfg=133 ctermbg=53 cterm=NONE guifg=#6d717e guibg=#2c303a gui=NONE
hi SpellBad cterm=undercurl gui=undercurl
hi SpellCap cterm=undercurl gui=undercurl
hi SpellRare cterm=undercurl gui=undercurl
hi SpellLocal cterm=undercurl gui=undercurl
hi DiffAdd ctermfg=NONE ctermbg=53 cterm=NONE guifg=NONE guibg=#00364a gui=NONE
hi DiffDelete ctermfg=133 ctermbg=53 cterm=NONE guifg=#6a3964 guibg=#4c1e47 gui=NONE
hi DiffChange ctermfg=NONE ctermbg=53 cterm=NONE guifg=NONE guibg=#391b73 gui=NONE
hi DiffText ctermfg=NONE ctermbg=133 cterm=bold guifg=NONE guibg=#593692 gui=bold
hi diffAdded ctermfg=133 ctermbg=53 cterm=NONE guifg=#3d788f guibg=#00364a gui=NONE
hi diffRemoved ctermfg=133 ctermbg=53 cterm=NONE guifg=#94608c guibg=#4c1e47 gui=NONE
hi diffChanged ctermfg=133 ctermbg=53 cterm=NONE guifg=#845dbd guibg=#391b73 gui=NONE
hi Directory ctermfg=225 cterm=NONE guifg=#3f9595 gui=NONE
hi ErrorMsg ctermfg=133 ctermbg=NONE cterm=NONE guifg=#d62d8a guibg=NONE gui=NONE
hi SignColumn ctermfg=133 ctermbg=133 cterm=NONE guifg=#6d717e guibg=#343843 gui=NONE
hi MoreMsg ctermfg=133 cterm=NONE guifg=#5b70a5 gui=NONE
hi ModeMsg cterm=bold gui=bold
hi Question cterm=NONE guifg=fg gui=NONE
hi WarningMsg ctermfg=133 cterm=NONE guifg=#d62d8a gui=NONE
hi WildMenu ctermfg=225 ctermbg=133 cterm=bold guifg=#818592 guibg=#595e6a gui=bold
hi ColorColumn ctermfg=NONE ctermbg=133 cterm=NONE guifg=NONE guibg=#a60062 gui=NONE
hi @variable.parameter ctermfg=225 guifg=#acb577
hi @variable.parameter.builtin ctermfg=225 guifg=#acb577
hi @label ctermfg=225 guifg=#abb0bd
hi @markup.strong cterm=bold gui=bold
hi @markup.italic cterm=italic gui=italic
hi @markup.strikethrough cterm=strikethrough gui=strikethrough
hi @markup.underline cterm=underline gui=underline
hi Headline ctermbg=133 cterm=bold guibg=#003f53 gui=bold
hi @markup.heading ctermfg=225 guifg=#c1c6d3
hi @markup.heading.1 ctermfg=225 cterm=bold guifg=#c1c6d3 gui=bold
hi @markup.heading.2 ctermfg=225 cterm=underdouble guifg=#c1c6d3 gui=underdouble
hi @markup.heading.3 ctermfg=225 guifg=#c1c6d3
hi @markup.heading.4 ctermfg=225 guifg=#c1c6d3
hi @markup.heading.5 ctermfg=225 guifg=#c1c6d3
hi @markup.heading.6 ctermfg=225 guifg=#c1c6d3
hi @markup.quote ctermfg=225 ctermbg=133 guifg=#a974a1 guibg=#343843
hi @markup.link ctermfg=133 ctermbg=133 cterm=NONE guifg=#557399 guibg=#153a5c gui=NONE
hi @markup.link.label ctermfg=225 ctermbg=133 cterm=underline guifg=#7f9cc5 guibg=#153a5c gui=underline
hi @markup.link.url ctermfg=225 ctermbg=133 cterm=NONE guifg=#969aa7 guibg=#153a5c gui=NONE
hi CodeBlock ctermbg=133 guibg=#343843
hi @markup.raw ctermfg=225 guifg=#acb577
hi @markup.raw.block ctermfg=225 guifg=#acb577
hi @markup.list ctermfg=225 guifg=#a974a1
hi @markup.list.checked ctermfg=225 guifg=#69a2ba
hi DiagnosticError ctermfg=53 ctermbg=NONE cterm=NONE guifg=#77003c guibg=NONE gui=NONE
hi DiagnosticWarn ctermfg=133 ctermbg=NONE cterm=NONE guifg=#593692 guibg=NONE gui=NONE
hi DiagnosticInfo ctermfg=133 ctermbg=NONE cterm=NONE guifg=#2c4d70 guibg=NONE gui=NONE
hi DiagnosticHint ctermfg=133 ctermbg=NONE cterm=NONE guifg=#454f17 guibg=NONE gui=NONE
hi BufferLineFill ctermbg=53 guibg=#232731
hi BufferLineSeparator ctermfg=133 ctermbg=53 guifg=#343843 guibg=#232731
hi BufferLineBackground ctermfg=133 ctermbg=53 guifg=#595e6a guibg=#232731
hi BufferLineCloseButton ctermfg=133 ctermbg=53 guifg=#595e6a guibg=#232731
hi BufferLineModified ctermfg=133 ctermbg=133 guifg=#845dbd guibg=#343843
hi BufferLineSeparatorSelected ctermfg=133 ctermbg=53 guifg=#343843 guibg=#232731
hi BufferLineIndicatorSelected ctermfg=53 ctermbg=53 guifg=#2c303a guibg=#2c303a
hi BufferLineBufferSelected ctermfg=225 ctermbg=53 cterm=NONE guifg=#818592 guibg=#2c303a gui=NONE
hi BufferLineCloseButtonSelected ctermfg=225 ctermbg=53 guifg=#818592 guibg=#2c303a
hi BufferLineModifiedSelected ctermfg=133 ctermbg=53 guifg=#845dbd guibg=#2c303a
hi CmpItemAbbr ctermfg=133 guifg=#6d717e
hi CmpItemAbbrDeprecated ctermfg=133 guifg=#595e6a
hi CmpItemAbbrMatch ctermfg=225 guifg=#bf89b7
hi CmpItemAbbrMatchFuzzy ctermfg=133 guifg=#d62d8a
hi CmpItemKind ctermfg=133 guifg=#3d788f
hi CmpItemMenu ctermfg=133 guifg=#6e4aa7
hi GitGutterAdd ctermfg=133 ctermbg=133 cterm=bold guifg=#3d788f guibg=#343843 gui=bold
hi GitGutterChange ctermfg=133 ctermbg=133 cterm=bold guifg=#94608c guibg=#343843 gui=bold
hi GitGutterDelete ctermfg=133 ctermbg=133 cterm=bold guifg=#94608c guibg=#343843 gui=bold
hi LazyButton ctermfg=225 ctermbg=133 guifg=#abb0bd guibg=#474b56
hi LazyButtonActive ctermfg=53 ctermbg=225 cterm=bold guifg=#2c303a guibg=#acb577 gui=bold
hi LazyComment ctermfg=225 ctermbg=NONE guifg=#6a87af guibg=NONE
hi LazyH1 ctermfg=225 ctermbg=133 guifg=#bf89b7 guibg=#7e4d78
hi LazyH2 ctermfg=225 ctermbg=NONE guifg=#6a87af guibg=NONE
hi LazyNormal ctermfg=225 ctermbg=133 guifg=#969aa7 guibg=#343843
hi LazySpecial ctermfg=225 ctermbg=NONE guifg=#d8dcea guibg=NONE
hi LazyTaskOutput ctermfg=225 ctermbg=133 guifg=#abb0bd guibg=#343843
hi makeCommands NONE
hi phpIdentifier NONE
hi phpFunctions NONE
hi phpClasses NONE
hi rustFuncCall ctermfg=225 guifg=#7084bb
hi vimVar NONE
hi rainbowcol1 ctermfg=225 guifg=#818592
hi rainbowcol2 ctermfg=225 guifg=#97a063
hi rainbowcol3 ctermfg=225 guifg=#3f9595
hi rainbowcol4 ctermfg=225 guifg=#6a87af
hi rainbowcol5 ctermfg=133 guifg=#845dbd
hi rainbowcol6 ctermfg=133 guifg=#94608c
hi! link @variable Identifier
hi! link @variable.builtin Constant
hi! link @variable.member Identifier
hi! link @constant Constant
hi! link @constant.builtin Constant
hi! link @constant.macro Constant
hi! link @module Constant
hi! link @module.builtin Constant
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
hi! link @markup.list.unchecked Normal
hi! link @diff.plus diffAdded
hi! link @diff.minus diffRemoved
hi! link @diff.delta diffChanged
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
