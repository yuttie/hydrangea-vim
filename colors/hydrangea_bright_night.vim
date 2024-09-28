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
    
hi Normal ctermfg=225 ctermbg=53 guifg=#8c909e guibg=#292c38
hi NormalFloat ctermfg=225 ctermbg=53 guifg=#8c909e guibg=#1f222d
hi FloatBorder ctermfg=225 ctermbg=53 guifg=#8c909e guibg=#1f222d
hi Cursor ctermfg=NONE ctermbg=225 cterm=NONE guifg=NONE guibg=#8c909e gui=NONE
hi CursorIM ctermfg=NONE ctermbg=225 guifg=NONE guibg=#8c909e
hi CursorLine ctermfg=NONE ctermbg=133 cterm=NONE guifg=NONE guibg=#333642 gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=133 cterm=NONE guifg=NONE guibg=#333642 gui=NONE
hi Visual ctermfg=NONE ctermbg=133 cterm=NONE guifg=NONE guibg=#484b58 gui=NONE
hi VisualNOS cterm=underline guifg=fg gui=underline
hi Folded ctermfg=133 ctermbg=133 cterm=NONE guifg=#747986 guibg=#333642 gui=NONE
hi FoldColumn ctermfg=133 ctermbg=53 cterm=NONE guifg=#747986 guibg=#292c38 gui=NONE
hi Title ctermfg=133 ctermbg=NONE cterm=bold guifg=#996591 guibg=NONE gui=bold
hi StatusLine ctermfg=133 ctermbg=133 cterm=NONE guifg=#747986 guibg=#484b58 gui=NONE
hi StatusLineNC ctermfg=133 ctermbg=133 cterm=NONE guifg=#5e626f guibg=#333642 gui=NONE
hi VertSplit ctermfg=225 ctermbg=53 cterm=NONE guifg=#8c909e guibg=#292c38 gui=NONE
hi WinSeparator ctermfg=225 ctermbg=53 cterm=NONE guifg=#8c909e guibg=#292c38 gui=NONE
hi LineNr ctermfg=133 ctermbg=133 cterm=NONE guifg=#484b58 guibg=#333642 gui=NONE
hi CursorLineNr ctermfg=133 ctermbg=133 cterm=bold guifg=#747986 guibg=#484b58 gui=bold
hi SpecialKey ctermfg=133 ctermbg=133 cterm=bold guifg=#155469 guibg=#488299 gui=bold
hi NonText ctermfg=133 ctermbg=NONE cterm=NONE guifg=#5e626f guibg=NONE gui=NONE
hi MatchParen ctermfg=133 ctermbg=NONE cterm=bold guifg=#d12f85 guibg=NONE gui=bold
hi Comment ctermfg=133 cterm=NONE guifg=#5e626f gui=NONE
hi Constant ctermfg=225 ctermbg=NONE cterm=NONE guifg=#609ab2 guibg=NONE gui=NONE
hi String ctermfg=133 ctermbg=133 cterm=NONE guifg=#5c7ca2 guibg=#1b385a gui=NONE
hi Number ctermfg=133 ctermbg=133 cterm=NONE guifg=#488299 guibg=#003e52 gui=NONE
hi Identifier ctermfg=225 cterm=NONE guifg=#bec2d1 gui=NONE
hi Function ctermfg=225 cterm=NONE guifg=#a4c6f0 gui=NONE
hi Statement ctermfg=133 cterm=bold guifg=#6078af gui=bold
hi Operator ctermfg=225 cterm=bold guifg=#8c909e gui=bold
hi Include ctermfg=133 cterm=NONE guifg=#8761c5 gui=NONE
hi PreProc ctermfg=225 cterm=NONE guifg=#9f7adf gui=NONE
hi Type ctermfg=225 cterm=NONE guifg=#b27da9 gui=NONE
hi StorageClass ctermfg=133 cterm=bold guifg=#6078af gui=bold
hi Structure ctermfg=133 cterm=NONE guifg=#996591 gui=NONE
hi Typedef ctermfg=133 cterm=bold guifg=#6078af gui=bold
hi Special ctermfg=225 ctermbg=NONE cterm=bold guifg=#7790c9 guibg=NONE gui=bold
hi Underlined cterm=underline guifg=fg gui=underline
hi Ignore guifg=bg
hi Error ctermfg=133 ctermbg=53 cterm=bold guifg=#d12f85 guibg=#61002c gui=bold
hi Todo ctermfg=225 ctermbg=133 cterm=bold guifg=#a5b177 guibg=#495219 gui=bold
hi IncSearch ctermfg=225 ctermbg=225 cterm=bold guifg=#e7aedd guibg=#b27da9 gui=bold
hi Search ctermfg=225 ctermbg=133 cterm=bold guifg=#e7aedd guibg=#814f79 gui=bold
hi Pmenu ctermfg=225 ctermbg=53 cterm=NONE guifg=#8c909e guibg=#1f222d gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=53 cterm=bold guifg=NONE guibg=#292c38 gui=bold
hi PmenuSbar ctermbg=53 cterm=NONE guibg=#1f222d gui=NONE
hi PmenuThumb ctermbg=133 cterm=NONE guibg=#747986 gui=NONE
hi TabLine ctermfg=133 ctermbg=53 cterm=NONE guifg=#747986 guibg=#292c38 gui=NONE
hi TabLineSel ctermfg=53 ctermbg=133 cterm=bold guifg=#292c38 guibg=#996591 gui=bold
hi TabLineFill ctermfg=133 ctermbg=53 cterm=NONE guifg=#747986 guibg=#292c38 gui=NONE
hi SpellBad cterm=undercurl gui=undercurl
hi SpellCap cterm=undercurl gui=undercurl
hi SpellRare cterm=undercurl gui=undercurl
hi SpellLocal cterm=undercurl gui=undercurl
hi DiffAdd ctermfg=NONE ctermbg=53 cterm=NONE guifg=NONE guibg=#003347 gui=NONE
hi DiffDelete ctermfg=133 ctermbg=53 cterm=NONE guifg=#693861 guibg=#461840 gui=NONE
hi DiffChange ctermfg=NONE ctermbg=53 cterm=NONE guifg=NONE guibg=#3a086b gui=NONE
hi DiffText ctermfg=NONE ctermbg=133 cterm=bold guifg=NONE guibg=#593291 gui=bold
hi diffAdded ctermfg=133 ctermbg=53 cterm=NONE guifg=#488299 guibg=#003347 gui=NONE
hi diffRemoved ctermfg=133 ctermbg=53 cterm=NONE guifg=#996591 guibg=#461840 gui=NONE
hi diffChanged ctermfg=133 ctermbg=53 cterm=NONE guifg=#8761c5 guibg=#3a086b gui=NONE
hi Directory ctermfg=225 cterm=NONE guifg=#4fa1a0 gui=NONE
hi ErrorMsg ctermfg=133 ctermbg=NONE cterm=NONE guifg=#d12f85 guibg=NONE gui=NONE
hi SignColumn ctermfg=133 ctermbg=133 cterm=NONE guifg=#747986 guibg=#333642 gui=NONE
hi MoreMsg ctermfg=133 cterm=NONE guifg=#6078af gui=NONE
hi ModeMsg cterm=bold gui=bold
hi Question cterm=NONE guifg=fg gui=NONE
hi WarningMsg ctermfg=133 cterm=NONE guifg=#d12f85 gui=NONE
hi WildMenu ctermfg=225 ctermbg=133 cterm=bold guifg=#8c909e guibg=#5e626f gui=bold
hi ColorColumn ctermfg=NONE ctermbg=133 cterm=NONE guifg=NONE guibg=#980057 gui=NONE
hi @variable.parameter ctermfg=225 guifg=#becb8f
hi @variable.parameter.builtin ctermfg=225 guifg=#becb8f
hi @label ctermfg=225 guifg=#bec2d1
hi @markup.strong cterm=bold gui=bold
hi @markup.italic cterm=italic gui=italic
hi @markup.strikethrough cterm=strikethrough gui=strikethrough
hi @markup.underline cterm=underline gui=underline
hi Headline ctermbg=133 cterm=bold guibg=#003e52 gui=bold
hi @markup.heading ctermfg=225 guifg=#d7dceb
hi @markup.heading.1 ctermfg=225 cterm=bold guifg=#d7dceb gui=bold
hi @markup.heading.2 ctermfg=225 cterm=underdouble guifg=#d7dceb gui=underdouble
hi @markup.heading.3 ctermfg=225 guifg=#d7dceb
hi @markup.heading.4 ctermfg=225 guifg=#d7dceb
hi @markup.heading.5 ctermfg=225 guifg=#d7dceb
hi @markup.heading.6 ctermfg=225 guifg=#d7dceb
hi @markup.quote ctermfg=225 ctermbg=133 guifg=#b27da9 guibg=#333642
hi @markup.link ctermfg=133 ctermbg=133 cterm=NONE guifg=#5c7ca2 guibg=#1b385a gui=NONE
hi @markup.link.label ctermfg=225 ctermbg=133 cterm=underline guifg=#8badd6 guibg=#1b385a gui=underline
hi @markup.link.url ctermfg=225 ctermbg=133 cterm=NONE guifg=#a5a9b7 guibg=#1b385a gui=NONE
hi CodeBlock ctermbg=133 guibg=#333642
hi @markup.raw ctermfg=225 guifg=#becb8f
hi @markup.raw.block ctermfg=225 guifg=#becb8f
hi @markup.list ctermfg=225 guifg=#b27da9
hi @markup.list.checked ctermfg=225 guifg=#78b4cb
hi DiagnosticError ctermfg=53 ctermbg=NONE cterm=NONE guifg=#61002c guibg=NONE gui=NONE
hi DiagnosticWarn ctermfg=133 ctermbg=NONE cterm=NONE guifg=#593291 guibg=NONE gui=NONE
hi DiagnosticInfo ctermfg=133 ctermbg=NONE cterm=NONE guifg=#304e71 guibg=NONE gui=NONE
hi DiagnosticHint ctermfg=133 ctermbg=NONE cterm=NONE guifg=#495219 guibg=NONE gui=NONE
hi BufferLineFill ctermbg=53 guibg=#1f222d
hi BufferLineSeparator ctermfg=133 ctermbg=53 guifg=#333642 guibg=#1f222d
hi BufferLineBackground ctermfg=133 ctermbg=53 guifg=#5e626f guibg=#1f222d
hi BufferLineCloseButton ctermfg=133 ctermbg=53 guifg=#5e626f guibg=#1f222d
hi BufferLineModified ctermfg=133 ctermbg=133 guifg=#8761c5 guibg=#333642
hi BufferLineSeparatorSelected ctermfg=133 ctermbg=53 guifg=#333642 guibg=#1f222d
hi BufferLineIndicatorSelected ctermfg=53 ctermbg=53 guifg=#292c38 guibg=#292c38
hi BufferLineBufferSelected ctermfg=225 ctermbg=53 cterm=NONE guifg=#8c909e guibg=#292c38 gui=NONE
hi BufferLineCloseButtonSelected ctermfg=225 ctermbg=53 guifg=#8c909e guibg=#292c38
hi BufferLineModifiedSelected ctermfg=133 ctermbg=53 guifg=#8761c5 guibg=#292c38
hi CmpItemAbbr ctermfg=133 guifg=#747986
hi CmpItemAbbrDeprecated ctermfg=133 guifg=#5e626f
hi CmpItemAbbrMatch ctermfg=225 guifg=#cc95c3
hi CmpItemAbbrMatchFuzzy ctermfg=133 guifg=#d12f85
hi CmpItemKind ctermfg=133 guifg=#488299
hi CmpItemMenu ctermfg=133 guifg=#704aab
hi GitGutterAdd ctermfg=133 ctermbg=133 cterm=bold guifg=#488299 guibg=#333642 gui=bold
hi GitGutterChange ctermfg=133 ctermbg=133 cterm=bold guifg=#996591 guibg=#333642 gui=bold
hi GitGutterDelete ctermfg=133 ctermbg=133 cterm=bold guifg=#996591 guibg=#333642 gui=bold
hi LazyButton ctermfg=225 ctermbg=133 guifg=#bec2d1 guibg=#484b58
hi LazyButtonActive ctermfg=53 ctermbg=225 cterm=bold guifg=#292c38 guibg=#becb8f gui=bold
hi LazyComment ctermfg=225 ctermbg=NONE guifg=#7394bc guibg=NONE
hi LazyH1 ctermfg=225 ctermbg=133 guifg=#cc95c3 guibg=#814f79
hi LazyH2 ctermfg=225 ctermbg=NONE guifg=#7394bc guibg=NONE
hi LazyNormal ctermfg=225 ctermbg=133 guifg=#a5a9b7 guibg=#333642
hi LazySpecial ctermfg=225 ctermbg=NONE guifg=#f2f7ff guibg=NONE
hi LazyTaskOutput ctermfg=225 ctermbg=133 guifg=#bec2d1 guibg=#333642
hi makeCommands NONE
hi phpIdentifier NONE
hi phpFunctions NONE
hi phpClasses NONE
hi rustFuncCall ctermfg=225 guifg=#7790c9
hi vimVar NONE
hi rainbowcol1 ctermfg=225 guifg=#8c909e
hi rainbowcol2 ctermfg=225 guifg=#a5b177
hi rainbowcol3 ctermfg=225 guifg=#4fa1a0
hi rainbowcol4 ctermfg=225 guifg=#7394bc
hi rainbowcol5 ctermfg=133 guifg=#8761c5
hi rainbowcol6 ctermfg=133 guifg=#996591
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
