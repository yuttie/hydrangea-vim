from collections import OrderedDict

def define(p):
    """Define a colorscheme.

    Parameters
    ----------
    p : dict[str, dict[int, str]]
        Palette data structure.
        The first str key is a color name.
        The second int key is a lightness level.

    Returns
    -------
    OrderedDict
        Colorscheme definition.
        A key of the dictionary represents a highlight group name.
    """
    color = OrderedDict()
    color['Normal']       = dict(fg=p['gray'][+2], bg=p['gray'][-3],                 )
    color['NormalFloat']  = dict(fg=p['gray'][+2], bg=p['gray'][-4],                 )
    color['FloatBorder']  = dict(fg=p['gray'][+2], bg=p['gray'][-4],                 )
    color['Cursor']       = dict(fg='NONE',        bg=p['gray'][+2], deco='NONE'     )
    color['CursorIM']     = dict(fg='NONE',        bg=p['gray'][+2],                 )
    color['CursorLine']   = dict(fg='NONE',        bg=p['gray'][-2], deco='NONE'     )
    color['CursorColumn'] = dict(fg='NONE',        bg=p['gray'][-2], deco='NONE'     )
    color['Visual']       = dict(fg='NONE',        bg=p['gray'][-1], deco='NONE'     )
    color['VisualNOS']    = dict(fg='fg',                            deco='underline')

    color['Folded']       = dict(fg=p['gray'][+1],    bg=p['gray'][-2], deco='NONE')
    color['FoldColumn']   = dict(fg=p['gray'][+1],    bg=p['gray'][-3], deco='NONE')
    color['Title']        = dict(fg=p['magenta'][+1], bg='NONE',        deco='bold')
    color['StatusLine']   = dict(fg=p['gray'][+1],    bg=p['gray'][-1], deco='NONE')
    color['StatusLineNC'] = dict(fg=p['gray'][0],     bg=p['gray'][-2], deco='NONE')
    color['VertSplit']    = dict(fg=p['gray'][+2],    bg=p['gray'][-3], deco='NONE')
    color['WinSeparator'] = dict(fg=p['gray'][+2],    bg=p['gray'][-3], deco='NONE')
    color['LineNr']       = dict(fg=p['gray'][-1],    bg=p['gray'][-2], deco='NONE')
    color['CursorLineNr'] = dict(fg=p['gray'][+1],    bg=p['gray'][-1], deco='bold')
    color['SpecialKey']   = dict(fg=p['cyan'][-1],    bg=p['cyan'][+1], deco='bold')
    color['NonText']      = dict(fg=p['gray'][0],     bg='NONE',        deco='NONE')
    color['MatchParen']   = dict(fg=p['red'][+1],     bg='NONE',        deco='bold')

    color['Comment']      = dict(fg=p['gray'][0],                                  deco='NONE'     )
    color['Constant']     = dict(fg=p['cyan'][+2],        bg='NONE',               deco='NONE'     )
    color['String']       = dict(fg=p['skyblue'][+1],     bg=p['skyblue'][-2],     deco='NONE'     )
    color['Number']       = dict(fg=p['cyan'][+1],        bg=p['cyan'][-2],        deco='NONE'     )
    color['Identifier']   = dict(fg=p['gray'][+4],                                 deco='NONE'     )
    color['Function']     = dict(fg=p['skyblue'][+4],                              deco='NONE'     )
    color['Statement']    = dict(fg=p['blue'][+1],                                 deco='bold'     )
    color['Operator']     = dict(fg=p['gray'][+2],                                 deco='bold'     )
    color['Include']      = dict(fg=p['violet'][+1],                               deco='NONE'     )
    color['PreProc']      = dict(fg=p['violet'][+2],                               deco='NONE'     )
    color['Type']         = dict(fg=p['magenta'][+2],                              deco='NONE'     )
    color['StorageClass'] = dict(fg=p['blue'][+1],                                 deco='bold'     )
    color['Structure']    = dict(fg=p['magenta'][+1],                              deco='NONE'     )
    color['Typedef']      = dict(fg=p['blue'][+1],                                 deco='bold'     )
    color['Special']      = dict(fg=p['blue'][+2],        bg='NONE',               deco='bold'     )
    color['Underlined']   = dict(fg='fg',                                          deco='underline')
    color['Ignore']       = dict(fg='bg'                                                           )
    color['Error']        = dict(fg=p['red'][+1],         bg=p['red'][-4],         deco='bold'     )
    color['Todo']         = dict(fg=p['yellowgreen'][+3], bg=p['yellowgreen'][-1], deco='bold'     )

    color['IncSearch']    = dict(fg=p['magenta'][+4], bg=p['magenta'][+2], deco='bold')
    color['Search']       = dict(fg=p['magenta'][+4], bg=p['magenta'][0],  deco='bold')
    color['Pmenu']        = dict(fg=p['gray'][+2],    bg=p['gray'][-4],    deco='NONE')
    color['PmenuSel']     = dict(fg='NONE',           bg=p['gray'][-3],    deco='bold')
    color['PmenuSbar']    = dict(                     bg=p['gray'][-4],    deco='NONE')
    color['PmenuThumb']   = dict(                     bg=p['gray'][+1],    deco='NONE')
    color['TabLine']      = dict(fg=p['gray'][+1],    bg=p['gray'][-3],    deco='NONE')
    color['TabLineSel']   = dict(fg=p['gray'][-3],    bg=p['magenta'][+1], deco='bold')
    color['TabLineFill']  = dict(fg=p['gray'][+1],    bg=p['gray'][-3],    deco='NONE')

    color['SpellBad']     = dict(deco='undercurl')
    color['SpellCap']     = dict(deco='undercurl')
    color['SpellRare']    = dict(deco='undercurl')
    color['SpellLocal']   = dict(deco='undercurl')

    # vimdiff
    color['DiffAdd']      = dict(fg='NONE',             bg=p['cyan'][-3],    deco='NONE')
    color['DiffDelete']   = dict(fg=p['magenta'][-1],   bg=p['magenta'][-3], deco='NONE')
    color['DiffChange']   = dict(fg='NONE',             bg=p['violet'][-3],  deco='NONE')
    color['DiffText']     = dict(fg='NONE',             bg=p['violet'][-1],  deco='bold')

    # syntax/diff.vim
    color['diffAdded']    = dict(fg=p['cyan'][+1],    bg=p['cyan'][-3],    deco='NONE')
    color['diffRemoved']  = dict(fg=p['magenta'][+1], bg=p['magenta'][-3], deco='NONE')
    color['diffChanged']  = dict(fg=p['violet'][+1],  bg=p['violet'][-3],  deco='NONE')

    color['Directory']    = dict(fg=p['teal'][+2],                           deco='NONE')
    color['ErrorMsg']     = dict(fg=p['red'][+1],  bg='NONE',                deco='NONE')
    color['SignColumn']   = dict(fg=p['gray'][+1], bg=color['LineNr']['bg'], deco='NONE')
    color['MoreMsg']      = dict(fg=p['blue'][+1],                           deco='NONE')
    color['ModeMsg']      = dict(                                            deco='bold')
    color['Question']     = dict(fg='fg',                                    deco='NONE')
    color['WarningMsg']   = dict(fg=p['red'][+1],                            deco='NONE')
    color['WildMenu']     = dict(fg=p['gray'][+2], bg=p['gray'][0],          deco='bold')
    color['ColorColumn']  = dict(fg='NONE',        bg=p['red'][-1],          deco='NONE')

    # Tree-sitter (https://github.com/nvim-treesitter/nvim-treesitter/blob/3a74b5831058d0daf8952a5b8c556c61b30a3f46/CONTRIBUTING.md)
    # Identifiers
    color['@variable'] = 'Identifier'
    color['@variable.builtin'] = 'Constant'
    color['@variable.parameter'] = dict(fg=p['yellowgreen'][+4])
    color['@variable.parameter.builtin'] = dict(fg=p['yellowgreen'][+4])
    color['@variable.member'] = 'Identifier'
    color['@constant'] = 'Constant'
    color['@constant.builtin'] = 'Constant'
    color['@constant.macro'] = 'Constant'
    color['@module'] = 'Constant'
    color['@module.builtin'] = 'Constant'
    color['@label'] = dict(fg=p['gray'][+4])
    # Literals
    color['@string'] = 'String'
    color['@string.documentation'] = 'Special'
    color['@string.regexp'] = 'String'
    color['@string.escape'] = 'Special'
    color['@string.special'] = 'Special'
    color['@string.special.symbol'] = 'Special'
    color['@string.special.url'] = 'Special'
    color['@string.special.path'] = 'Special'
    color['@character'] = 'Constant'
    color['@character.special'] = 'Special'
    color['@boolean'] = 'Constant'
    color['@number'] = 'Number'
    color['@number.float'] = 'Number'
    # Types
    color['@type'] = 'Type'
    color['@type.builtin'] = 'Type'
    color['@type.definition'] = 'Type'
    color['@attribute'] = 'Special'
    color['@attribute.builtin'] = 'Special'
    color['@property'] = 'Identifier'
    # Functions
    color['@function'] = 'Function'
    color['@function.builtin'] = 'Function'
    color['@function.call'] = 'Function'
    color['@function.macro'] = 'Function'
    color['@function.method'] = 'Function'
    color['@function.method.call'] = 'Function'
    color['@constructor'] = 'Identifier'
    color['@operator'] = 'Operator'
    # Keywords
    color['@keyword'] = 'Statement'
    color['@keyword.coroutine'] = 'Statement'
    color['@keyword.function'] = 'Statement'
    color['@keyword.operator'] = 'Statement'
    color['@keyword.import'] = 'Statement'
    color['@keyword.type'] = 'Statement'
    color['@keyword.modifier'] = 'Statement'
    color['@keyword.repeat'] = 'Statement'
    color['@keyword.return'] = 'Statement'
    color['@keyword.debug'] = 'Statement'
    color['@keyword.exception'] = 'Statement'
    color['@keyword.conditional'] = 'Statement'
    color['@keyword.conditional.ternary'] = 'Statement'
    color['@keyword.directive'] = 'Statement'
    color['@keyword.directive.define'] = 'Statement'
    # Punctuation
    color['@punctuation.delimiter'] = 'Normal'
    color['@punctuation.bracket'] = 'Normal'
    color['@punctuation.special'] = 'Special'
    # Comments
    color['@comment'] = 'Comment'
    color['@comment.documentation'] = 'Comment'
    color['@comment.error'] = 'Error'
    color['@comment.warning'] = 'Error'
    color['@comment.todo'] = 'Todo'
    color['@comment.note'] = 'Todo'
    # Markup
    color['@markup.strong'] = dict(deco='bold')
    color['@markup.italic'] = dict(deco='italic')
    color['@markup.strikethrough'] = dict(deco='strikethrough')
    color['@markup.underline'] = dict(deco='underline')
    color['Headline'] = dict(bg=p['cyan'][-2], deco='bold')
    color['@markup.heading'] = dict(fg=p['gray'][+5])
    color['@markup.heading.1'] = dict(fg=p['gray'][+5], deco='bold')
    color['@markup.heading.2'] = dict(fg=p['gray'][+5], deco='underdouble')
    color['@markup.heading.3'] = dict(fg=p['gray'][+5])
    color['@markup.heading.4'] = dict(fg=p['gray'][+5])
    color['@markup.heading.5'] = dict(fg=p['gray'][+5])
    color['@markup.heading.6'] = dict(fg=p['gray'][+5])
    color['@markup.quote'] = dict(fg=p['magenta'][+2], bg=p['gray'][-2])
    # color['@markup.math'] = ''
    color['@markup.link'] = dict(fg=p['skyblue'][+1], bg=p['skyblue'][-2], deco='NONE')
    color['@markup.link.label'] = dict(fg=p['skyblue'][+3], bg=p['skyblue'][-2], deco='underline')
    color['@markup.link.url'] = dict(fg=p['gray'][+3], bg=p['skyblue'][-2], deco='NONE')
    color['CodeBlock'] = dict(bg=p['gray'][-2])
    color['@markup.raw'] = dict(fg=p['yellowgreen'][+4])
    color['@markup.raw.block'] = dict(fg=p['yellowgreen'][+4])
    color['@markup.list'] = dict(fg=p['magenta'][+2])
    color['@markup.list.checked'] = dict(fg=p['cyan'][+3])
    color['@markup.list.unchecked'] = 'Normal'
    color['@diff.plus'] = 'diffAdded'
    color['@diff.minus'] = 'diffRemoved'
    color['@diff.delta'] = 'diffChanged'
    # color['@tag'] = ''
    # color['@tag.builtin'] = ''
    # color['@tag.attribute'] = ''
    # color['@tag.delimiter'] = ''

    # Diagnostic
    color['DiagnosticError'] = dict(fg=p['magenta'][1],     bg='NONE', deco='NONE')
    color['DiagnosticWarn']  = dict(fg=p['yellowgreen'][3], bg='NONE', deco='NONE')
    color['DiagnosticInfo']  = dict(fg=p['skyblue'][1],     bg='NONE', deco='NONE')
    color['DiagnosticHint']  = dict(fg=p['green'][1],       bg='NONE', deco='NONE')

    # bufferline.nvim
    color['BufferLineFill']      = dict(bg=p['gray'][-4])

    color['BufferLineSeparator']   = dict(fg=p['gray'][-2],   bg=p['gray'][-4])
    color['BufferLineBackground']  = dict(fg=p['gray'][0],    bg=p['gray'][-4])
    color['BufferLineCloseButton'] = dict(fg=p['gray'][0],    bg=p['gray'][-4])
    color['BufferLineModified']    = dict(fg=p['violet'][+1], bg=p['gray'][-2])

    color['BufferLineSeparatorSelected']   = dict(fg=p['gray'][-2],   bg=p['gray'][-4]             )
    color['BufferLineIndicatorSelected']   = dict(fg=p['gray'][-3],   bg=p['gray'][-3]             )
    color['BufferLineBufferSelected']      = dict(fg=p['gray'][+2],   bg=p['gray'][-3], deco='NONE')
    color['BufferLineCloseButtonSelected'] = dict(fg=p['gray'][+2],   bg=p['gray'][-3]             )
    color['BufferLineModifiedSelected']    = dict(fg=p['violet'][+1], bg=p['gray'][-3]             )

    # nvim-cmp
    color['CmpItemAbbr']           = dict(fg=p['gray'][+1])
    color['CmpItemAbbrDeprecated'] = dict(fg=p['gray'][0])
    color['CmpItemAbbrMatch']      = dict(fg=p['magenta'][+3])
    color['CmpItemAbbrMatchFuzzy'] = dict(fg=p['red'][+1])
    color['CmpItemKind']           = dict(fg=p['cyan'][+1])
    color['CmpItemMenu']           = dict(fg=p['violet'][0])

    # GitGutter
    color['GitGutterAdd']    = dict(fg=p['cyan'][+1],    bg=color['SignColumn']['bg'], deco='bold')
    color['GitGutterChange'] = dict(fg=p['magenta'][+1], bg=color['SignColumn']['bg'], deco='bold')
    color['GitGutterDelete'] = dict(fg=p['magenta'][+1], bg=color['SignColumn']['bg'], deco='bold')

    # lazy.nvim
    color['LazyButton']        = dict(fg=p['gray'][+4], bg=p['gray'][-1])
    color['LazyButtonActive']  = dict(fg=p['gray'][-3], bg=p['yellowgreen'][+4], deco='bold')
    color['LazyComment']       = dict(fg=p['skyblue'][+2], bg='NONE')
    color['LazyCommit']        = '@variable.builtin'
    color['LazyCommitIssue']   = 'Number'
    color['LazyCommitScope']   = 'Italic'
    color['LazyCommitType']    = 'Title'
    color['LazyDimmed']        = 'Conceal'
    color['LazyDir']           = '@markup.link'
    color['LazyH1']            = dict(fg=p['magenta'][+3], bg=p['magenta'][0])
    color['LazyH2']            = dict(fg=p['skyblue'][+2], bg='NONE')
    color['LazyLocal']         = 'LineNr'
    color['LazyNoCond']        = 'DiagnosticWarn'
    color['LazyNormal']        = dict(fg=p['gray'][+3], bg=p['gray'][-2],                 )
    color['LazyProgressDone']  = 'Constant'
    color['LazyProgressTodo']  = 'LineNr'
    color['LazyProp']          = 'Conceal'
    color['LazyReasonCmd']     = '@variable.parameter'
    color['LazyReasonEvent']   = '@variable.parameter'
    color['LazyReasonFt']      = '@variable.parameter'
    color['LazyReasonImport']  = '@variable.parameter'
    color['LazyReasonKeys']    = '@variable.parameter'
    color['LazyReasonPlugin']  = '@variable.parameter'
    color['LazyReasonRequire'] = '@variable.parameter'
    color['LazyReasonRuntime'] = '@variable.parameter'
    color['LazyReasonSource']  = '@variable.parameter'
    color['LazyReasonStart']   = '@variable.parameter'
    color['LazySpecial']       = dict(fg=p['gray'][+6], bg='NONE')
    color['LazyTaskError']     = 'ErrorMsg'
    color['LazyTaskOutput']    = dict(fg=p['gray'][+4], bg=p['gray'][-2])
    color['LazyUrl']           = '@markup.link'
    color['LazyValue']         = '@string'

    # make
    color['makeIdent']      = 'Type'
    color['makeSpecTarget'] = 'Special'
    color['makeTarget']     = 'Function'
    color['makeCommands']   = 'NONE'

    # php
    color['phpVarSelector'] = 'Identifier'
    color['phpIdentifier']  = 'NONE'
    color['phpFunctions']   = 'NONE'
    color['phpClasses']     = 'NONE'
    color['phpFunction']    = 'Function'
    color['phpClass']       = 'Type'

    # rust
    color['rustFuncCall'] = dict(fg=p['blue'][+2])
    color['rustQuestionMark'] = 'Operator'

    # vim
    color['vimVar'] = 'NONE'

    # p00f/nvim-ts-rainbow
    NVIM_TS_RAINBOW_DEFINITION = [
        dict(fg=p['gray'][+2]),
        dict(fg=p['yellowgreen'][+3]),
        dict(fg=p['teal'][+2]),
        dict(fg=p['skyblue'][+2]),
        dict(fg=p['violet'][+1]),
        dict(fg=p['magenta'][+1]),
    ]
    for i, hi in enumerate(NVIM_TS_RAINBOW_DEFINITION):
        color[f'rainbowcol{i + 1}'] = hi

    return color
