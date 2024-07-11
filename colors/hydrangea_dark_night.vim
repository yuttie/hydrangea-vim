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
    
hi Normal ctermfg=225 ctermbg=53 guifg=#505460 guibg=#000010
hi NormalFloat ctermfg=225 ctermbg=53 guifg=#505460 guibg=#000003
hi FloatBorder ctermfg=225 ctermbg=53 guifg=#505460 guibg=#000003
hi Cursor ctermfg=NONE ctermbg=225 cterm=NONE guifg=NONE guibg=#505460 gui=NONE
hi CursorIM ctermfg=NONE ctermbg=225 guifg=NONE guibg=#505460
hi CursorLine ctermfg=NONE ctermbg=133 cterm=NONE guifg=NONE guibg=#080d19 gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=133 cterm=NONE guifg=NONE guibg=#080d19 gui=NONE
hi Visual ctermfg=NONE ctermbg=133 cterm=NONE guifg=NONE guibg=#1b1f29 gui=NONE
hi VisualNOS cterm=underline guifg=fg gui=underline
hi Folded ctermfg=133 ctermbg=133 cterm=NONE guifg=#3d414d guibg=#080d19 gui=NONE
hi FoldColumn ctermfg=133 ctermbg=53 cterm=NONE guifg=#3d414d guibg=#000010 gui=NONE
hi Title ctermfg=133 ctermbg=NONE cterm=bold guifg=#60305a guibg=NONE gui=bold
hi StatusLine ctermfg=133 ctermbg=133 cterm=NONE guifg=#3d414d guibg=#1b1f29 gui=NONE
hi StatusLineNC ctermfg=133 ctermbg=133 cterm=NONE guifg=#2c2f3a guibg=#080d19 gui=NONE
hi VertSplit ctermfg=225 ctermbg=53 cterm=NONE guifg=#505460 guibg=#000010 gui=NONE
hi WinSeparator ctermfg=225 ctermbg=53 cterm=NONE guifg=#505460 guibg=#000010 gui=NONE
hi LineNr ctermfg=133 ctermbg=133 cterm=NONE guifg=#1b1f29 guibg=#080d19 gui=NONE
hi CursorLineNr ctermfg=133 ctermbg=133 cterm=bold guifg=#3d414d guibg=#1b1f29 gui=bold
hi SpecialKey ctermfg=133 ctermbg=133 cterm=bold guifg=#002438 guibg=#1b485e gui=bold
hi NonText ctermfg=133 ctermbg=NONE cterm=NONE guifg=#2c2f3a guibg=NONE gui=NONE
hi MatchParen ctermfg=133 ctermbg=NONE cterm=bold guifg=#982258 guibg=NONE gui=bold
hi Comment ctermfg=133 cterm=NONE guifg=#2c2f3a gui=NONE
hi Constant ctermfg=225 ctermbg=NONE cterm=NONE guifg=#315a71 guibg=NONE gui=NONE
hi String ctermfg=133 ctermbg=133 cterm=NONE guifg=#214366 guibg=#00102e gui=NONE
hi Number ctermfg=133 ctermbg=133 cterm=NONE guifg=#1b485e guibg=#001427 gui=NONE
hi Identifier ctermfg=225 cterm=NONE guifg=#777b88 gui=NONE
hi Function ctermfg=225 cterm=NONE guifg=#5f7da4 gui=NONE
hi Statement ctermfg=133 cterm=bold guifg=#264070 gui=bold
hi Operator ctermfg=225 cterm=bold guifg=#505460 gui=bold
hi Include ctermfg=133 cterm=NONE guifg=#4f2e87 gui=NONE
hi PreProc ctermfg=225 cterm=NONE guifg=#64419d gui=NONE
hi Type ctermfg=225 cterm=NONE guifg=#75436e gui=NONE
hi StorageClass ctermfg=133 cterm=bold guifg=#264070 gui=bold
hi Structure ctermfg=133 cterm=NONE guifg=#60305a gui=NONE
hi Typedef ctermfg=133 cterm=bold guifg=#264070 gui=bold
hi Special ctermfg=225 ctermbg=NONE cterm=bold guifg=#3c5285 guibg=NONE gui=bold
hi Underlined cterm=underline guifg=fg gui=underline
hi Ignore guifg=bg
hi Error ctermfg=133 ctermbg=53 cterm=bold guifg=#982258 guibg=#400012 gui=bold
hi Todo ctermfg=225 ctermbg=133 cterm=bold guifg=#636c38 guibg=#1c2200 gui=bold
hi IncSearch ctermfg=225 ctermbg=225 cterm=bold guifg=#9f6a97 guibg=#75436e gui=bold
hi Search ctermfg=225 ctermbg=133 cterm=bold guifg=#9f6a97 guibg=#4d1d47 gui=bold
hi Pmenu ctermfg=225 ctermbg=53 cterm=NONE guifg=#777b88 guibg=#000010 gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=133 cterm=bold guifg=NONE guibg=#080d19 gui=bold
hi PmenuSbar ctermbg=53 cterm=NONE guibg=#000010 gui=NONE
hi PmenuThumb ctermbg=225 cterm=NONE guibg=#505460 gui=NONE
hi TabLine ctermfg=133 ctermbg=53 cterm=NONE guifg=#3d414d guibg=#000010 gui=NONE
hi TabLineSel ctermfg=53 ctermbg=133 cterm=bold guifg=#000010 guibg=#60305a gui=bold
hi TabLineFill ctermfg=133 ctermbg=53 cterm=NONE guifg=#3d414d guibg=#000010 gui=NONE
hi SpellBad cterm=undercurl gui=undercurl
hi SpellCap cterm=undercurl gui=undercurl
hi SpellRare cterm=undercurl gui=undercurl
hi SpellLocal cterm=undercurl gui=undercurl
hi DiffAdd ctermfg=NONE ctermbg=53 cterm=NONE guifg=NONE guibg=#00091f gui=NONE
hi DiffDelete ctermfg=133 ctermbg=53 cterm=NONE guifg=#390b35 guibg=#23001c gui=NONE
hi DiffChange ctermfg=NONE ctermbg=53 cterm=NONE guifg=NONE guibg=#080042 gui=NONE
hi DiffText ctermfg=NONE ctermbg=133 cterm=bold guifg=NONE guibg=#24085e gui=bold
hi diffAdded ctermfg=133 ctermbg=53 cterm=NONE guifg=#1b485e guibg=#00091f gui=NONE
hi diffRemoved ctermfg=133 ctermbg=53 cterm=NONE guifg=#60305a guibg=#23001c gui=NONE
hi diffChanged ctermfg=133 ctermbg=53 cterm=NONE guifg=#4f2e87 guibg=#080042 gui=NONE
hi Directory ctermfg=225 cterm=NONE guifg=#2e6062 gui=NONE
hi ErrorMsg ctermfg=133 ctermbg=NONE cterm=NONE guifg=#982258 guibg=NONE gui=NONE
hi SignColumn ctermfg=133 ctermbg=133 cterm=NONE guifg=#3d414d guibg=#080d19 gui=NONE
hi MoreMsg ctermfg=133 cterm=NONE guifg=#264070 gui=NONE
hi ModeMsg cterm=bold gui=bold
hi Question cterm=NONE guifg=fg gui=NONE
hi WarningMsg ctermfg=133 cterm=NONE guifg=#982258 gui=NONE
hi WildMenu ctermfg=225 ctermbg=133 cterm=bold guifg=#505460 guibg=#2c2f3a gui=bold
hi ColorColumn ctermfg=NONE ctermbg=133 cterm=NONE guifg=NONE guibg=#6b0034 gui=NONE
hi @variable.parameter ctermfg=225 guifg=#77804b
hi @variable.parameter.builtin ctermfg=225 guifg=#77804b
hi @label ctermfg=225 guifg=#777b88
hi @markup.strong cterm=bold gui=bold
hi @markup.italic cterm=italic gui=italic
hi @markup.strikethrough cterm=strikethrough gui=strikethrough
hi @markup.underline cterm=underline gui=underline
hi Headline ctermbg=133 cterm=bold guibg=#001427 gui=bold
hi @markup.heading ctermfg=225 guifg=#8b909d
hi @markup.heading.1 ctermfg=225 cterm=bold guifg=#8b909d gui=bold
hi @markup.heading.2 ctermfg=225 cterm=underdouble guifg=#8b909d gui=underdouble
hi @markup.heading.3 ctermfg=225 guifg=#8b909d
hi @markup.heading.4 ctermfg=225 guifg=#8b909d
hi @markup.heading.5 ctermfg=225 guifg=#8b909d
hi @markup.heading.6 ctermfg=225 guifg=#8b909d
hi @markup.quote ctermfg=225 ctermbg=133 guifg=#75436e guibg=#080d19
hi @markup.link ctermfg=133 ctermbg=133 cterm=NONE guifg=#214366 guibg=#00102e gui=NONE
hi @markup.link.label ctermfg=225 ctermbg=133 cterm=underline guifg=#4b698f guibg=#00102e gui=underline
hi @markup.link.url ctermfg=225 ctermbg=133 cterm=NONE guifg=#636774 guibg=#00102e gui=NONE
hi CodeBlock ctermbg=133 guibg=#080d19
hi @markup.raw ctermfg=225 guifg=#77804b
hi @markup.raw.block ctermfg=225 guifg=#77804b
hi @markup.list ctermfg=225 guifg=#75436e
hi @markup.list.checked ctermfg=225 guifg=#456e86
hi DiagnosticError ctermfg=53 ctermbg=NONE cterm=NONE guifg=#400012 guibg=NONE gui=NONE
hi DiagnosticWarn ctermfg=133 ctermbg=NONE cterm=NONE guifg=#24085e guibg=NONE gui=NONE
hi DiagnosticInfo ctermfg=133 ctermbg=NONE cterm=NONE guifg=#002140 guibg=NONE gui=NONE
hi DiagnosticHint ctermfg=133 ctermbg=NONE cterm=NONE guifg=#1c2200 guibg=NONE gui=NONE
hi BufferLineFill ctermbg=53 guibg=#000003
hi BufferLineSeparator ctermfg=133 ctermbg=53 guifg=#080d19 guibg=#000003
hi BufferLineBackground ctermfg=133 ctermbg=53 guifg=#2c2f3a guibg=#000003
hi BufferLineCloseButton ctermfg=133 ctermbg=53 guifg=#2c2f3a guibg=#000003
hi BufferLineModified ctermfg=133 ctermbg=133 guifg=#4f2e87 guibg=#080d19
hi BufferLineSeparatorSelected ctermfg=133 ctermbg=53 guifg=#080d19 guibg=#000003
hi BufferLineIndicatorSelected ctermfg=53 ctermbg=53 guifg=#000010 guibg=#000010
hi BufferLineBufferSelected ctermfg=225 ctermbg=53 cterm=NONE guifg=#505460 guibg=#000010 gui=NONE
hi BufferLineCloseButtonSelected ctermfg=225 ctermbg=53 guifg=#505460 guibg=#000010
hi BufferLineModifiedSelected ctermfg=133 ctermbg=53 guifg=#4f2e87 guibg=#000010
hi CmpItemAbbr ctermfg=133 guifg=#3d414d
hi CmpItemAbbrDeprecated ctermfg=133 guifg=#2c2f3a
hi CmpItemAbbrMatch ctermfg=225 guifg=#8a5682
hi CmpItemAbbrMatchFuzzy ctermfg=133 guifg=#982258
hi CmpItemKind ctermfg=133 guifg=#1b485e
hi CmpItemMenu ctermfg=133 guifg=#3a1b73
hi GitGutterAdd ctermfg=133 ctermbg=133 cterm=bold guifg=#1b485e guibg=#080d19 gui=bold
hi GitGutterChange ctermfg=133 ctermbg=133 cterm=bold guifg=#60305a guibg=#080d19 gui=bold
hi GitGutterDelete ctermfg=133 ctermbg=133 cterm=bold guifg=#60305a guibg=#080d19 gui=bold
hi LazyButton ctermfg=225 ctermbg=133 guifg=#777b88 guibg=#1b1f29
hi LazyButtonActive ctermfg=53 ctermbg=225 cterm=bold guifg=#000010 guibg=#77804b gui=bold
hi LazyComment ctermfg=225 ctermbg=NONE guifg=#36567a guibg=NONE
hi LazyH1 ctermfg=225 ctermbg=133 guifg=#8a5682 guibg=#4d1d47
hi LazyH2 ctermfg=225 ctermbg=NONE guifg=#36567a guibg=NONE
hi LazyNormal ctermfg=225 ctermbg=133 guifg=#636774 guibg=#080d19
hi LazySpecial ctermfg=225 ctermbg=NONE guifg=#a0a5b2 guibg=NONE
hi LazyTaskOutput ctermfg=225 ctermbg=133 guifg=#777b88 guibg=#080d19
hi makeCommands NONE
hi phpIdentifier NONE
hi phpFunctions NONE
hi phpClasses NONE
hi rustFuncCall ctermfg=225 guifg=#3c5285
hi vimVar NONE
hi rainbowcol1 ctermfg=225 guifg=#505460
hi rainbowcol2 ctermfg=225 guifg=#636c38
hi rainbowcol3 ctermfg=225 guifg=#2e6062
hi rainbowcol4 ctermfg=225 guifg=#36567a
hi rainbowcol5 ctermfg=133 guifg=#4f2e87
hi rainbowcol6 ctermfg=133 guifg=#60305a
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
