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
    
hi Normal ctermfg=225 ctermbg=53 guifg=#383c47 guibg=#000000
hi NormalFloat ctermfg=225 ctermbg=53 guifg=#383c47 guibg=#000000
hi FloatBorder ctermfg=225 ctermbg=53 guifg=#383c47 guibg=#000000
hi Cursor ctermfg=NONE ctermbg=225 cterm=NONE guifg=NONE guibg=#383c47 gui=NONE
hi CursorIM ctermfg=NONE ctermbg=225 guifg=NONE guibg=#383c47
hi CursorLine ctermfg=NONE ctermbg=133 cterm=NONE guifg=NONE guibg=#000001 gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=133 cterm=NONE guifg=NONE guibg=#000001 gui=NONE
hi Visual ctermfg=NONE ctermbg=133 cterm=NONE guifg=NONE guibg=#03040c gui=NONE
hi VisualNOS cterm=underline guifg=fg gui=underline
hi Folded ctermfg=133 ctermbg=133 cterm=NONE guifg=#242732 guibg=#000001 gui=NONE
hi FoldColumn ctermfg=133 ctermbg=53 cterm=NONE guifg=#242732 guibg=#000000 gui=NONE
hi Title ctermfg=133 ctermbg=NONE cterm=bold guifg=#3f133b guibg=NONE gui=bold
hi StatusLine ctermfg=133 ctermbg=133 cterm=NONE guifg=#242732 guibg=#03040c gui=NONE
hi StatusLineNC ctermfg=133 ctermbg=133 cterm=NONE guifg=#12151f guibg=#000001 gui=NONE
hi VertSplit ctermfg=225 ctermbg=53 cterm=NONE guifg=#383c47 guibg=#000000 gui=NONE
hi WinSeparator ctermfg=225 ctermbg=53 cterm=NONE guifg=#383c47 guibg=#000000 gui=NONE
hi LineNr ctermfg=133 ctermbg=133 cterm=NONE guifg=#03040c guibg=#000001 gui=NONE
hi CursorLineNr ctermfg=133 ctermbg=133 cterm=bold guifg=#242732 guibg=#03040c gui=bold
hi SpecialKey ctermfg=133 ctermbg=133 cterm=bold guifg=#000719 guibg=#112d42 gui=bold
hi NonText ctermfg=133 ctermbg=NONE cterm=NONE guifg=#12151f guibg=NONE gui=NONE
hi MatchParen ctermfg=133 ctermbg=NONE cterm=bold guifg=#641a31 guibg=NONE gui=bold
hi Comment ctermfg=133 cterm=NONE guifg=#12151f gui=NONE
hi Constant ctermfg=225 ctermbg=NONE cterm=NONE guifg=#264258 guibg=NONE gui=NONE
hi String ctermfg=133 ctermbg=133 cterm=NONE guifg=#0f2949 guibg=#00000b gui=NONE
hi Number ctermfg=133 ctermbg=133 cterm=NONE guifg=#112d42 guibg=#000006 gui=NONE
hi Identifier ctermfg=225 cterm=NONE guifg=#636774 gui=NONE
hi Function ctermfg=225 cterm=NONE guifg=#4e6a90 gui=NONE
hi Statement ctermfg=133 cterm=bold guifg=#112453 gui=bold
hi Operator ctermfg=225 cterm=bold guifg=#383c47 gui=bold
hi Include ctermfg=133 cterm=NONE guifg=#351a64 gui=NONE
hi PreProc ctermfg=225 cterm=NONE guifg=#49317c gui=NONE
hi Type ctermfg=225 cterm=NONE guifg=#562851 gui=NONE
hi StorageClass ctermfg=133 cterm=bold guifg=#112453 gui=bold
hi Structure ctermfg=133 cterm=NONE guifg=#3f133b gui=NONE
hi Typedef ctermfg=133 cterm=bold guifg=#112453 gui=bold
hi Special ctermfg=225 ctermbg=NONE cterm=bold guifg=#24396b guibg=NONE gui=bold
hi Underlined cterm=underline guifg=fg gui=underline
hi Ignore guifg=bg
hi Error ctermfg=133 ctermbg=53 cterm=bold guifg=#641a31 guibg=#050000 gui=bold
hi Todo ctermfg=225 ctermbg=133 cterm=bold guifg=#4e5638 guibg=#040700 gui=bold
hi IncSearch ctermfg=225 ctermbg=225 cterm=bold guifg=#85547f guibg=#562851 gui=bold
hi Search ctermfg=225 ctermbg=133 cterm=bold guifg=#85547f guibg=#2a0027 gui=bold
hi Pmenu ctermfg=225 ctermbg=53 cterm=NONE guifg=#383c47 guibg=#000000 gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=53 cterm=bold guifg=NONE guibg=#000000 gui=bold
hi PmenuSbar ctermbg=53 cterm=NONE guibg=#000000 gui=NONE
hi PmenuThumb ctermbg=133 cterm=NONE guibg=#242732 gui=NONE
hi TabLine ctermfg=133 ctermbg=53 cterm=NONE guifg=#242732 guibg=#000000 gui=NONE
hi TabLineSel ctermfg=53 ctermbg=133 cterm=bold guifg=#000000 guibg=#3f133b gui=bold
hi TabLineFill ctermfg=133 ctermbg=53 cterm=NONE guifg=#242732 guibg=#000000 gui=NONE
hi SpellBad cterm=undercurl gui=undercurl
hi SpellCap cterm=undercurl gui=undercurl
hi SpellRare cterm=undercurl gui=undercurl
hi SpellLocal cterm=undercurl gui=undercurl
hi DiffAdd ctermfg=NONE ctermbg=53 cterm=NONE guifg=NONE guibg=#000001 gui=NONE
hi DiffDelete ctermfg=133 ctermbg=53 cterm=NONE guifg=#140013 guibg=#000000 gui=NONE
hi DiffChange ctermfg=NONE ctermbg=53 cterm=NONE guifg=NONE guibg=#030015 gui=NONE
hi DiffText ctermfg=NONE ctermbg=133 cterm=bold guifg=NONE guibg=#120036 gui=bold
hi diffAdded ctermfg=133 ctermbg=53 cterm=NONE guifg=#112d42 guibg=#000001 gui=NONE
hi diffRemoved ctermfg=133 ctermbg=53 cterm=NONE guifg=#3f133b guibg=#000000 gui=NONE
hi diffChanged ctermfg=133 ctermbg=53 cterm=NONE guifg=#351a64 guibg=#030015 gui=NONE
hi Directory ctermfg=225 cterm=NONE guifg=#284749 gui=NONE
hi ErrorMsg ctermfg=133 ctermbg=NONE cterm=NONE guifg=#641a31 guibg=NONE gui=NONE
hi SignColumn ctermfg=133 ctermbg=133 cterm=NONE guifg=#242732 guibg=#000001 gui=NONE
hi MoreMsg ctermfg=133 cterm=NONE guifg=#112453 gui=NONE
hi ModeMsg cterm=bold gui=bold
hi Question cterm=NONE guifg=fg gui=NONE
hi WarningMsg ctermfg=133 cterm=NONE guifg=#641a31 gui=NONE
hi WildMenu ctermfg=225 ctermbg=133 cterm=bold guifg=#383c47 guibg=#12151f gui=bold
hi ColorColumn ctermfg=NONE ctermbg=133 cterm=NONE guifg=NONE guibg=#33000c gui=NONE
hi @variable.parameter ctermfg=225 guifg=#646d4e
hi @variable.parameter.builtin ctermfg=225 guifg=#646d4e
hi @label ctermfg=225 guifg=#636774
hi @markup.strong cterm=bold gui=bold
hi @markup.italic cterm=italic gui=italic
hi @markup.strikethrough cterm=strikethrough gui=strikethrough
hi @markup.underline cterm=underline gui=underline
hi Headline ctermbg=133 cterm=bold guibg=#000006 gui=bold
hi @markup.heading ctermfg=225 guifg=#7a7f8c
hi @markup.heading.1 ctermfg=225 cterm=bold guifg=#7a7f8c gui=bold
hi @markup.heading.2 ctermfg=225 cterm=underdouble guifg=#7a7f8c gui=underdouble
hi @markup.heading.3 ctermfg=225 guifg=#7a7f8c
hi @markup.heading.4 ctermfg=225 guifg=#7a7f8c
hi @markup.heading.5 ctermfg=225 guifg=#7a7f8c
hi @markup.heading.6 ctermfg=225 guifg=#7a7f8c
hi @markup.quote ctermfg=225 ctermbg=133 guifg=#562851 guibg=#000001
hi @markup.link ctermfg=133 ctermbg=133 cterm=NONE guifg=#0f2949 guibg=#00000b gui=NONE
hi @markup.link.label ctermfg=225 ctermbg=133 cterm=underline guifg=#385377 guibg=#00000b gui=underline
hi @markup.link.url ctermfg=225 ctermbg=133 cterm=NONE guifg=#4d515d guibg=#00000b gui=NONE
hi CodeBlock ctermbg=133 guibg=#000001
hi @markup.raw ctermfg=225 guifg=#646d4e
hi @markup.raw.block ctermfg=225 guifg=#646d4e
hi @markup.list ctermfg=225 guifg=#562851
hi @markup.list.checked ctermfg=225 guifg=#3b586e
hi DiagnosticError ctermfg=53 ctermbg=NONE cterm=NONE guifg=#050000 guibg=NONE gui=NONE
hi DiagnosticWarn ctermfg=133 ctermbg=NONE cterm=NONE guifg=#120036 guibg=NONE gui=NONE
hi DiagnosticInfo ctermfg=133 ctermbg=NONE cterm=NONE guifg=#00031f guibg=NONE gui=NONE
hi DiagnosticHint ctermfg=133 ctermbg=NONE cterm=NONE guifg=#040700 guibg=NONE gui=NONE
hi BufferLineFill ctermbg=53 guibg=#000000
hi BufferLineSeparator ctermfg=133 ctermbg=53 guifg=#000001 guibg=#000000
hi BufferLineBackground ctermfg=133 ctermbg=53 guifg=#12151f guibg=#000000
hi BufferLineCloseButton ctermfg=133 ctermbg=53 guifg=#12151f guibg=#000000
hi BufferLineModified ctermfg=133 ctermbg=133 guifg=#351a64 guibg=#000001
hi BufferLineSeparatorSelected ctermfg=133 ctermbg=53 guifg=#000001 guibg=#000000
hi BufferLineIndicatorSelected ctermfg=53 ctermbg=53 guifg=#000000 guibg=#000000
hi BufferLineBufferSelected ctermfg=225 ctermbg=53 cterm=NONE guifg=#383c47 guibg=#000000 gui=NONE
hi BufferLineCloseButtonSelected ctermfg=225 ctermbg=53 guifg=#383c47 guibg=#000000
hi BufferLineModifiedSelected ctermfg=133 ctermbg=53 guifg=#351a64 guibg=#000000
hi CmpItemAbbr ctermfg=133 guifg=#242732
hi CmpItemAbbrDeprecated ctermfg=133 guifg=#12151f
hi CmpItemAbbrMatch ctermfg=225 guifg=#6d3e67
hi CmpItemAbbrMatchFuzzy ctermfg=133 guifg=#641a31
hi CmpItemKind ctermfg=133 guifg=#112d42
hi CmpItemMenu ctermfg=133 guifg=#23004d
hi GitGutterAdd ctermfg=133 ctermbg=133 cterm=bold guifg=#112d42 guibg=#000001 gui=bold
hi GitGutterChange ctermfg=133 ctermbg=133 cterm=bold guifg=#3f133b guibg=#000001 gui=bold
hi GitGutterDelete ctermfg=133 ctermbg=133 cterm=bold guifg=#3f133b guibg=#000001 gui=bold
hi LazyButton ctermfg=225 ctermbg=133 guifg=#636774 guibg=#03040c
hi LazyButtonActive ctermfg=53 ctermbg=225 cterm=bold guifg=#000000 guibg=#646d4e gui=bold
hi LazyComment ctermfg=225 ctermbg=NONE guifg=#233d60 guibg=NONE
hi LazyH1 ctermfg=225 ctermbg=133 guifg=#6d3e67 guibg=#2a0027
hi LazyH2 ctermfg=225 ctermbg=NONE guifg=#233d60 guibg=NONE
hi LazyNormal ctermfg=225 ctermbg=133 guifg=#4d515d guibg=#000001
hi LazySpecial ctermfg=225 ctermbg=NONE guifg=#9297a4 guibg=NONE
hi LazyTaskOutput ctermfg=225 ctermbg=133 guifg=#636774 guibg=#000001
hi makeCommands NONE
hi phpIdentifier NONE
hi phpFunctions NONE
hi phpClasses NONE
hi rustFuncCall ctermfg=225 guifg=#24396b
hi vimVar NONE
hi rainbowcol1 ctermfg=225 guifg=#383c47
hi rainbowcol2 ctermfg=225 guifg=#4e5638
hi rainbowcol3 ctermfg=225 guifg=#284749
hi rainbowcol4 ctermfg=225 guifg=#233d60
hi rainbowcol5 ctermfg=133 guifg=#351a64
hi rainbowcol6 ctermfg=133 guifg=#3f133b
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
