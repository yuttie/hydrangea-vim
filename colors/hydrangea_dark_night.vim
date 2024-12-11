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
    
hi Normal ctermfg=225 ctermbg=53 guifg=#616571 guibg=#070a13
hi NormalFloat ctermfg=225 ctermbg=53 guifg=#616571 guibg=#02040a
hi FloatBorder ctermfg=225 ctermbg=53 guifg=#616571 guibg=#02040a
hi Cursor ctermfg=NONE ctermbg=225 cterm=NONE guifg=NONE guibg=#616571 gui=NONE
hi CursorIM ctermfg=NONE ctermbg=225 guifg=NONE guibg=#616571
hi CursorLine ctermfg=NONE ctermbg=133 cterm=NONE guifg=NONE guibg=#0f131c gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=133 cterm=NONE guifg=NONE guibg=#0f131c gui=NONE
hi Visual ctermfg=NONE ctermbg=133 cterm=NONE guifg=NONE guibg=#222530 gui=NONE
hi VisualNOS cterm=underline guifg=fg gui=underline
hi Folded ctermfg=133 ctermbg=133 cterm=NONE guifg=#4b4f5a guibg=#0f131c gui=NONE
hi FoldColumn ctermfg=133 ctermbg=53 cterm=NONE guifg=#4b4f5a guibg=#070a13 gui=NONE
hi Title ctermfg=133 ctermbg=NONE cterm=bold guifg=#6b3b64 guibg=NONE gui=bold
hi StatusLine ctermfg=133 ctermbg=133 cterm=NONE guifg=#4b4f5a guibg=#222530 gui=NONE
hi StatusLineNC ctermfg=133 ctermbg=133 cterm=NONE guifg=#363a45 guibg=#0f131c gui=NONE
hi VertSplit ctermfg=225 ctermbg=53 cterm=NONE guifg=#616571 guibg=#070a13 gui=NONE
hi WinSeparator ctermfg=225 ctermbg=53 cterm=NONE guifg=#616571 guibg=#070a13 gui=NONE
hi LineNr ctermfg=133 ctermbg=133 cterm=NONE guifg=#222530 guibg=#0f131c gui=NONE
hi CursorLineNr ctermfg=133 ctermbg=133 cterm=bold guifg=#4b4f5a guibg=#222530 gui=bold
hi SpecialKey ctermfg=133 ctermbg=133 cterm=bold guifg=#002b3f guibg=#1e576b gui=bold
hi NonText ctermfg=133 ctermbg=NONE cterm=NONE guifg=#363a45 guibg=NONE gui=NONE
hi MatchParen ctermfg=133 ctermbg=NONE cterm=bold guifg=#9a2559 guibg=NONE gui=bold
hi Comment ctermfg=133 cterm=NONE guifg=#363a45 gui=NONE
hi Constant ctermfg=225 ctermbg=NONE cterm=NONE guifg=#376d83 guibg=NONE gui=NONE
hi String ctermfg=133 ctermbg=133 cterm=NONE guifg=#335074 guibg=#001230 gui=NONE
hi Number ctermfg=133 ctermbg=133 cterm=NONE guifg=#1e576b guibg=#00172a gui=NONE
hi Identifier ctermfg=225 cterm=NONE guifg=#8f94a1 gui=NONE
hi Function ctermfg=225 cterm=NONE guifg=#7697be gui=NONE
hi Statement ctermfg=133 cterm=bold guifg=#374d81 gui=bold
hi Operator ctermfg=225 cterm=bold guifg=#616571 gui=bold
hi Include ctermfg=133 cterm=NONE guifg=#5c3594 gui=NONE
hi PreProc ctermfg=225 cterm=NONE guifg=#724cad gui=NONE
hi Type ctermfg=225 cterm=NONE guifg=#83517b gui=NONE
hi StorageClass ctermfg=133 cterm=bold guifg=#374d81 gui=bold
hi Structure ctermfg=133 cterm=NONE guifg=#6b3b64 gui=NONE
hi Typedef ctermfg=133 cterm=bold guifg=#374d81 gui=bold
hi Special ctermfg=225 ctermbg=NONE cterm=bold guifg=#4c6399 guibg=NONE gui=bold
hi Underlined cterm=underline guifg=fg gui=underline
hi Ignore guifg=bg
hi Error ctermfg=133 ctermbg=53 cterm=bold guifg=#9a2559 guibg=#31000a gui=bold
hi Todo ctermfg=225 ctermbg=133 cterm=bold guifg=#78834a guibg=#232a00 gui=bold
hi IncSearch ctermfg=225 ctermbg=225 cterm=bold guifg=#b580ac guibg=#83517b gui=bold
hi Search ctermfg=225 ctermbg=133 cterm=bold guifg=#b580ac guibg=#54264e gui=bold
hi Pmenu ctermfg=225 ctermbg=53 cterm=NONE guifg=#616571 guibg=#02040a gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=53 cterm=bold guifg=NONE guibg=#070a13 gui=bold
hi PmenuSbar ctermbg=53 cterm=NONE guibg=#02040a gui=NONE
hi PmenuThumb ctermbg=133 cterm=NONE guibg=#4b4f5a gui=NONE
hi TabLine ctermfg=133 ctermbg=53 cterm=NONE guifg=#4b4f5a guibg=#070a13 gui=NONE
hi TabLineSel ctermfg=53 ctermbg=133 cterm=bold guifg=#070a13 guibg=#6b3b64 gui=bold
hi TabLineFill ctermfg=133 ctermbg=53 cterm=NONE guifg=#4b4f5a guibg=#070a13 gui=NONE
hi SpellBad cterm=undercurl gui=undercurl
hi SpellCap cterm=undercurl gui=undercurl
hi SpellRare cterm=undercurl gui=undercurl
hi SpellLocal cterm=undercurl gui=undercurl
hi DiffAdd ctermfg=NONE ctermbg=53 cterm=NONE guifg=NONE guibg=#000e20 gui=NONE
hi DiffDelete ctermfg=133 ctermbg=53 cterm=NONE guifg=#3d1038 guibg=#1d001a gui=NONE
hi DiffChange ctermfg=NONE ctermbg=53 cterm=NONE guifg=NONE guibg=#18003e gui=NONE
hi DiffText ctermfg=NONE ctermbg=133 cterm=bold guifg=NONE guibg=#330062 gui=bold
hi diffAdded ctermfg=133 ctermbg=53 cterm=NONE guifg=#1e576b guibg=#000e20 gui=NONE
hi diffRemoved ctermfg=133 ctermbg=53 cterm=NONE guifg=#6b3b64 guibg=#1d001a gui=NONE
hi diffChanged ctermfg=133 ctermbg=53 cterm=NONE guifg=#5c3594 guibg=#18003e gui=NONE
hi Directory ctermfg=225 cterm=NONE guifg=#387373 gui=NONE
hi ErrorMsg ctermfg=133 ctermbg=NONE cterm=NONE guifg=#9a2559 guibg=NONE gui=NONE
hi SignColumn ctermfg=133 ctermbg=133 cterm=NONE guifg=#4b4f5a guibg=#0f131c gui=NONE
hi MoreMsg ctermfg=133 cterm=NONE guifg=#374d81 gui=NONE
hi ModeMsg cterm=bold gui=bold
hi Question cterm=NONE guifg=fg gui=NONE
hi WarningMsg ctermfg=133 cterm=NONE guifg=#9a2559 gui=NONE
hi WildMenu ctermfg=225 ctermbg=133 cterm=bold guifg=#616571 guibg=#363a45 gui=bold
hi ColorColumn ctermfg=NONE ctermbg=133 cterm=NONE guifg=NONE guibg=#65002f gui=NONE
hi @variable.parameter ctermfg=225 guifg=#909b62
hi @variable.parameter.builtin ctermfg=225 guifg=#909b62
hi @label ctermfg=225 guifg=#8f94a1
hi @markup.strong cterm=bold gui=bold
hi @markup.italic cterm=italic gui=italic
hi @markup.strikethrough cterm=strikethrough gui=strikethrough
hi @markup.underline cterm=underline gui=underline
hi Headline ctermbg=133 cterm=bold guibg=#00172a gui=bold
hi @markup.heading ctermfg=225 guifg=#a8adba
hi @markup.heading.1 ctermfg=225 cterm=bold guifg=#a8adba gui=bold
hi @markup.heading.2 ctermfg=225 cterm=underdouble guifg=#a8adba gui=underdouble
hi @markup.heading.3 ctermfg=225 guifg=#a8adba
hi @markup.heading.4 ctermfg=225 guifg=#a8adba
hi @markup.heading.5 ctermfg=225 guifg=#a8adba
hi @markup.heading.6 ctermfg=225 guifg=#a8adba
hi @markup.quote ctermfg=225 ctermbg=133 guifg=#83517b guibg=#0f131c
hi @markup.link ctermfg=133 ctermbg=133 cterm=NONE guifg=#335074 guibg=#001230 gui=NONE
hi @markup.link.label ctermfg=225 ctermbg=133 cterm=underline guifg=#5f7ea5 guibg=#001230 gui=underline
hi @markup.link.url ctermfg=225 ctermbg=133 cterm=NONE guifg=#787c89 guibg=#001230 gui=NONE
hi CodeBlock ctermbg=133 guibg=#0f131c
hi @markup.raw ctermfg=225 guifg=#909b62
hi @markup.raw.block ctermfg=225 guifg=#909b62
hi @markup.list ctermfg=225 guifg=#83517b
hi @markup.list.checked ctermfg=225 guifg=#4f859b
hi DiagnosticError ctermfg=133 ctermbg=NONE cterm=NONE guifg=#6b3b64 guibg=NONE gui=NONE
hi DiagnosticWarn ctermfg=225 ctermbg=NONE cterm=NONE guifg=#78834a guibg=NONE gui=NONE
hi DiagnosticInfo ctermfg=133 ctermbg=NONE cterm=NONE guifg=#335074 guibg=NONE gui=NONE
hi DiagnosticHint ctermfg=133 ctermbg=NONE cterm=NONE guifg=#3c5929 guibg=NONE gui=NONE
hi BufferLineFill ctermbg=53 guibg=#02040a
hi BufferLineSeparator ctermfg=133 ctermbg=53 guifg=#0f131c guibg=#02040a
hi BufferLineBackground ctermfg=133 ctermbg=53 guifg=#363a45 guibg=#02040a
hi BufferLineCloseButton ctermfg=133 ctermbg=53 guifg=#363a45 guibg=#02040a
hi BufferLineModified ctermfg=133 ctermbg=133 guifg=#5c3594 guibg=#0f131c
hi BufferLineSeparatorSelected ctermfg=133 ctermbg=53 guifg=#0f131c guibg=#02040a
hi BufferLineIndicatorSelected ctermfg=53 ctermbg=53 guifg=#070a13 guibg=#070a13
hi BufferLineBufferSelected ctermfg=225 ctermbg=53 cterm=NONE guifg=#616571 guibg=#070a13 gui=NONE
hi BufferLineCloseButtonSelected ctermfg=225 ctermbg=53 guifg=#616571 guibg=#070a13
hi BufferLineModifiedSelected ctermfg=133 ctermbg=53 guifg=#5c3594 guibg=#070a13
hi CmpItemAbbr ctermfg=133 guifg=#4b4f5a
hi CmpItemAbbrDeprecated ctermfg=133 guifg=#363a45
hi CmpItemAbbrMatch ctermfg=225 guifg=#9c6893
hi CmpItemAbbrMatchFuzzy ctermfg=133 guifg=#9a2559
hi CmpItemKind ctermfg=133 guifg=#1e576b
hi CmpItemMenu ctermfg=133 guifg=#471c7b
hi GitGutterAdd ctermfg=133 ctermbg=133 cterm=bold guifg=#1e576b guibg=#0f131c gui=bold
hi GitGutterChange ctermfg=133 ctermbg=133 cterm=bold guifg=#6b3b64 guibg=#0f131c gui=bold
hi GitGutterDelete ctermfg=133 ctermbg=133 cterm=bold guifg=#6b3b64 guibg=#0f131c gui=bold
hi LazyButton ctermfg=225 ctermbg=133 guifg=#8f94a1 guibg=#222530
hi LazyButtonActive ctermfg=53 ctermbg=225 cterm=bold guifg=#070a13 guibg=#909b62 gui=bold
hi LazyComment ctermfg=225 ctermbg=NONE guifg=#48678c guibg=NONE
hi LazyH1 ctermfg=225 ctermbg=133 guifg=#9c6893 guibg=#54264e
hi LazyH2 ctermfg=225 ctermbg=NONE guifg=#48678c guibg=NONE
hi LazyNormal ctermfg=225 ctermbg=133 guifg=#787c89 guibg=#0f131c
hi LazySpecial ctermfg=225 ctermbg=NONE guifg=#c1c6d4 guibg=NONE
hi LazyTaskOutput ctermfg=225 ctermbg=133 guifg=#8f94a1 guibg=#0f131c
hi makeCommands NONE
hi phpIdentifier NONE
hi phpFunctions NONE
hi phpClasses NONE
hi rustFuncCall ctermfg=225 guifg=#4c6399
hi vimVar NONE
hi rainbowcol1 ctermfg=225 guifg=#616571
hi rainbowcol2 ctermfg=225 guifg=#78834a
hi rainbowcol3 ctermfg=225 guifg=#387373
hi rainbowcol4 ctermfg=225 guifg=#48678c
hi rainbowcol5 ctermfg=133 guifg=#5c3594
hi rainbowcol6 ctermfg=133 guifg=#6b3b64
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
