HEADER = """" Name:     hydrangea.vim --- Hydrangea theme for Vim
" Author:   Yuta Taniguchi <yuta.taniguchi.y.t@gmail.com>
" URL:      https://github.com/yuttie/hydrangea-vim
" Version:  6.2.0
" License:  MIT License
"""

from collections import OrderedDict
import warnings
warnings.filterwarnings('ignore')

from skimage.color import rgb2lab, lab2lch, lch2lab, lab2rgb

def hex2rgb(hex: str) -> tuple[float, float, float]:
    if hex[0] != '#':
        raise ValueError('Arg hex must start with "#"')
    r = int(hex[1:3], 16) / 0xff
    g = int(hex[3:5], 16) / 0xff
    b = int(hex[5:7], 16) / 0xff
    return (r, g, b)

def rgb2hex(rgb: tuple[float, float, float]) -> str:
    r, g, b = map(lambda x: int(0xff * x), rgb)
    return f'#{r:02x}{g:02x}{b:02x}'

def hex2lch(hex: str) -> tuple[float, float, float]:
    return tuple(lab2lch(rgb2lab(hex2rgb(hex), illuminant='D65')))

def lch2hex(lch: tuple[float, float, float]) -> str:
    return rgb2hex(lab2rgb(lch2lab(lch), illuminant='D65'))

def adjust_lch(hex: str, delta_l: float, delta_c: float, delta_h: float) -> str:
    l, c, h = hex2lch(hex)
    return lch2hex((l + delta_l, c + delta_c, h + delta_h))

try:
    import vim

    # When executed in Vim, directly execute a command (apply the theme)
    def execute(cmd):
        vim.command(cmd)
except ImportError:
    # When executed outside Vim, print the whole colorscheme to stdout
    print(HEADER)

    def execute(cmd):
        print(cmd)

# Palette
color_names = [
    'gray',
    'red',
    'green',
    'teal',
    'cyan',
    'skyblue',
    'blue',
    'violet',
    'magenta',
]

# Base colors
# L: [0, 100]
# C: [0, 100]
# H: [0, 2 * PI]
base_l = 24
base_color = dict()
base_color['gray']    = lch2hex((base_l,  7.554, 4.888))
base_color['red']     = lch2hex((base_l, 76.168, 6.100))
base_color['green']   = lch2hex((base_l, 33.038, 1.926))
base_color['teal']    = lch2hex((base_l, 34.680, 3.427))
base_color['cyan']    = lch2hex((base_l, 22.086, 4.135))
base_color['skyblue'] = lch2hex((base_l, 24.056, 4.701))
base_color['blue']    = lch2hex((base_l, 31.778, 4.930))
base_color['violet']  = lch2hex((base_l, 57.453, 5.386))
base_color['magenta'] = lch2hex((base_l, 32.716, 5.769))

p = dict()
for cname in color_names:
    if cname in p:
        continue
    p[cname] = {
        '06': (adjust_lch(base_color[cname], -30, 0, 0),  53),
        '05': (adjust_lch(base_color[cname], -28, 0, 0),  53),
        '04': (adjust_lch(base_color[cname], -24, 0, 0),  53),
        '03': (adjust_lch(base_color[cname], -20, 0, 0),  53),
        '02': (adjust_lch(base_color[cname], -16, 0, 0), 133),
        '01': (adjust_lch(base_color[cname],  -8, 0, 0), 133),
        '0':  (adjust_lch(base_color[cname],   0, 0, 0), 133),
        '1':  (adjust_lch(base_color[cname],   8, 0, 0), 133),
        '2':  (adjust_lch(base_color[cname],  16, 0, 0), 225),
        '3':  (adjust_lch(base_color[cname],  24, 0, 0), 225),
        '4':  (adjust_lch(base_color[cname],  32, 0, 0), 225),
        '5':  (adjust_lch(base_color[cname],  40, 0, 0), 225),
        '6':  (adjust_lch(base_color[cname],  48, 0, 0), 225),
    }

# Definitions
color = OrderedDict()
color['Normal']       = dict(fg=p['gray']['2'], bg=p['gray']['03'],                 )
color['NormalFloat']  = dict(fg=p['gray']['1'], bg=p['gray']['03'],                 )
color['FloatBorder']  = dict(fg=p['gray']['1'], bg=p['gray']['03'],                 )
color['Cursor']       = dict(fg='NONE',         bg=p['gray']['2'],  deco='NONE'     )
color['CursorIM']     = dict(fg='NONE',         bg=p['gray']['2'],                  )
color['CursorLine']   = dict(fg='NONE',         bg=p['gray']['02'], deco='NONE'     )
color['CursorColumn'] = dict(fg='NONE',         bg=p['gray']['02'], deco='NONE'     )
color['Visual']       = dict(fg='NONE',         bg=p['gray']['01'], deco='NONE'     )
color['VisualNOS']    = dict(fg='fg',                               deco='underline')

color['Folded']       = dict(fg=p['gray']['1'],    bg=p['gray']['02'], deco='NONE')
color['FoldColumn']   = dict(fg=p['gray']['1'],    bg=p['gray']['03'], deco='NONE')
color['Title']        = dict(fg=p['magenta']['1'], bg='NONE',          deco='bold')
color['StatusLine']   = dict(fg=p['gray']['1'],    bg=p['gray']['01'], deco='NONE')
color['StatusLineNC'] = dict(fg=p['gray']['0'],    bg=p['gray']['02'], deco='NONE')
color['VertSplit']    = dict(fg=p['gray']['2'],    bg=p['gray']['03'], deco='NONE')
color['WinSeparator'] = dict(fg=p['gray']['2'],    bg=p['gray']['03'], deco='NONE')
color['LineNr']       = dict(fg=p['gray']['01'],   bg=p['gray']['02'], deco='NONE')
color['CursorLineNr'] = dict(fg=p['gray']['1'],    bg=p['gray']['01'], deco='bold')
color['SpecialKey']   = dict(fg=p['cyan']['01'],   bg=p['cyan']['1'],  deco='bold')
color['NonText']      = dict(fg=p['gray']['0'],    bg=p['gray']['03'], deco='NONE')
color['MatchParen']   = dict(fg=p['red']['1'],     bg='NONE',          deco='bold')

color['Comment']      = dict(fg=p['gray']['0'],                           deco='NONE'     )
color['Constant']     = dict(fg=p['cyan']['2'],    bg='NONE',             deco='NONE'     )
color['String']       = dict(fg=p['skyblue']['1'], bg=p['skyblue']['02'], deco='NONE'     )
color['Number']       = dict(fg=p['cyan']['1'],    bg=p['cyan']['02'],    deco='NONE'     )
color['Identifier']   = dict(fg=p['gray']['4'],                           deco='NONE'     )
color['Function']     = dict(fg=p['skyblue']['4'],                        deco='NONE'     )
color['Statement']    = dict(fg=p['blue']['1'],                           deco='bold'     )
color['Operator']     = dict(fg=p['gray']['2'],                           deco='bold'     )
color['Include']      = dict(fg=p['violet']['1'],                         deco='NONE'     )
color['PreProc']      = dict(fg=p['violet']['2'],                         deco='NONE'     )
color['Type']         = dict(fg=p['magenta']['2'],                        deco='NONE'     )
color['StorageClass'] = dict(fg=p['blue']['1'],                           deco='bold'     )
color['Structure']    = dict(fg=p['magenta']['1'],                        deco='NONE'     )
color['Typedef']      = dict(fg=p['blue']['1'],                           deco='bold'     )
color['Special']      = dict(fg=p['blue']['2'],    bg='NONE',             deco='bold'     )
color['Underlined']   = dict(fg='fg',                                     deco='underline')
color['Ignore']       = dict(fg='bg'                                                      )
color['Error']        = dict(fg=p['red']['1'],     bg=p['red']['04'],     deco='bold'     )
color['Todo']         = dict(fg=p['green']['3'],   bg=p['green']['01'],   deco='bold'     )

color['IncSearch']    = dict(fg=p['magenta']['4'], bg=p['magenta']['2'], deco='bold')
color['Search']       = dict(fg=p['magenta']['4'], bg=p['magenta']['0'], deco='bold')
color['Pmenu']        = dict(fg=p['gray']['4'],    bg=p['gray']['03'],   deco='NONE')
color['PmenuSel']     = dict(fg='NONE',            bg=p['gray']['02'],   deco='bold')
color['PmenuSbar']    = dict(                      bg=p['gray']['03'],   deco='NONE')
color['PmenuThumb']   = dict(                      bg=p['gray']['2'],    deco='NONE')
color['TabLine']      = dict(fg=p['gray']['1'],    bg=p['gray']['03'],   deco='NONE')
color['TabLineSel']   = dict(fg=p['gray']['03'],   bg=p['magenta']['1'], deco='bold')
color['TabLineFill']  = dict(fg=p['gray']['1'],    bg=p['gray']['03'],   deco='NONE')

color['SpellBad']     = dict(deco='undercurl')
color['SpellCap']     = dict(deco='undercurl')
color['SpellRare']    = dict(deco='undercurl')
color['SpellLocal']   = dict(deco='undercurl')

# vimdiff
color['DiffAdd']      = dict(fg='NONE',             bg=p['cyan']['03'],    deco='NONE')
color['DiffDelete']   = dict(fg=p['magenta']['01'], bg=p['magenta']['03'], deco='NONE')
color['DiffChange']   = dict(fg='NONE',             bg=p['violet']['03'],  deco='NONE')
color['DiffText']     = dict(fg='NONE',             bg=p['violet']['01'],  deco='bold')

# syntax/diff.vim
color['diffAdded']    = dict(fg=p['cyan']['1'],    bg=p['cyan']['03'],    deco='NONE')
color['diffRemoved']  = dict(fg=p['magenta']['1'], bg=p['magenta']['03'], deco='NONE')
color['diffChanged']  = dict(fg=p['violet']['1'],  bg=p['violet']['03'],  deco='NONE')

color['Directory']    = dict(fg=p['teal']['2'],                           deco='NONE')
color['ErrorMsg']     = dict(fg=p['red']['1'],  bg='NONE',                deco='NONE')
color['SignColumn']   = dict(fg=p['gray']['1'], bg=color['LineNr']['bg'], deco='NONE')
color['MoreMsg']      = dict(fg=p['blue']['1'],                           deco='NONE')
color['ModeMsg']      = dict(                                             deco='bold')
color['Question']     = dict(fg='fg',                                     deco='NONE')
color['WarningMsg']   = dict(fg=p['red']['1'],                            deco='NONE')
color['WildMenu']     = dict(fg=p['gray']['2'], bg=p['gray']['0'],        deco='bold')
color['ColorColumn']  = dict(fg='NONE',         bg=p['red']['01'],        deco='NONE')

# Tree-sitter (https://github.com/nvim-treesitter/nvim-treesitter/blob/3a74b5831058d0daf8952a5b8c556c61b30a3f46/CONTRIBUTING.md)
# Identifiers
color['@variable'] = 'Identifier'
color['@variable.builtin'] = 'Constant'
color['@variable.parameter'] = dict(fg=p['green']['4'])
color['@variable.parameter.builtin'] = dict(fg=p['green']['4'])
color['@variable.member'] = 'Identifier'
color['@constant'] = 'Constant'
color['@constant.builtin'] = 'Constant'
color['@constant.macro'] = 'Constant'
color['@module'] = 'Constant'
color['@module.builtin'] = 'Constant'
color['@label'] = 'Special'
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
# TODO Currently not provided
# color['@markup.strong'] = ''
# color['@markup.italic'] = ''
# color['@markup.strikethrough'] = ''
# color['@markup.underline'] = ''
# color['@markup.heading'] = ''
# color['@markup.heading.1'] = ''
# color['@markup.heading.2'] = ''
# color['@markup.heading.3'] = ''
# color['@markup.heading.4'] = ''
# color['@markup.heading.5'] = ''
# color['@markup.heading.6'] = ''
# color['@markup.quote'] = ''
# color['@markup.math'] = ''
# color['@markup.link'] = ''
# color['@markup.link.label'] = ''
# color['@markup.link.url'] = ''
# color['@markup.raw'] = ''
# color['@markup.raw.block'] = ''
# color['@markup.list'] = ''
# color['@markup.list.checked'] = ''
# color['@markup.list.unchecked'] = ''
# color['@diff.plus'] = ''
# color['@diff.minus'] = ''
# color['@diff.delta'] = ''
# color['@tag'] = ''
# color['@tag.builtin'] = ''
# color['@tag.attribute'] = ''
# color['@tag.delimiter'] = ''

# Diagnostic
color['DiagnosticError'] = dict(fg=p['red']['04'],     bg='NONE', deco='NONE')
color['DiagnosticWarn']  = dict(fg=p['violet']['01'],  bg='NONE', deco='NONE')
color['DiagnosticInfo']  = dict(fg=p['skyblue']['01'], bg='NONE', deco='NONE')
color['DiagnosticHint']  = dict(fg=p['green']['01'],   bg='NONE', deco='NONE')

# bufferline.nvim
color['BufferLineFill']      = dict(bg=p['gray']['04'])

color['BufferLineSeparator']   = dict(fg=p['gray']['02'],  bg=p['gray']['04'])
color['BufferLineBackground']  = dict(fg=p['gray']['0'],   bg=p['gray']['04'])
color['BufferLineCloseButton'] = dict(fg=p['gray']['0'],   bg=p['gray']['04'])
color['BufferLineModified']    = dict(fg=p['violet']['1'], bg=p['gray']['02'])

color['BufferLineSeparatorSelected']   = dict(fg=p['gray']['02'],  bg=p['gray']['04']             )
color['BufferLineIndicatorSelected']   = dict(fg=p['gray']['03'],  bg=p['gray']['03']             )
color['BufferLineBufferSelected']      = dict(fg=p['gray']['2'],   bg=p['gray']['03'], deco='NONE')
color['BufferLineCloseButtonSelected'] = dict(fg=p['gray']['2'],   bg=p['gray']['03']             )
color['BufferLineModifiedSelected']    = dict(fg=p['violet']['1'], bg=p['gray']['03']             )

# nvim-cmp
color['CmpItemAbbr']           = dict(fg=p['gray']['1']  )
color['CmpItemAbbrDeprecated'] = dict(fg=p['gray']['0']  )
color['CmpItemAbbrMatch']      = dict(fg=p['magenta']['3'] )
color['CmpItemAbbrMatchFuzzy'] = dict(fg=p['red']['1']   )
color['CmpItemKind']           = dict(fg=p['cyan']['1']  )
color['CmpItemMenu']           = dict(fg=p['violet']['0'])

# GitGutter
color['GitGutterAdd']    = dict(fg=p['cyan']['1'],    bg=color['SignColumn']['bg'], deco='bold')
color['GitGutterChange'] = dict(fg=p['magenta']['1'], bg=color['SignColumn']['bg'], deco='bold')
color['GitGutterDelete'] = dict(fg=p['magenta']['1'], bg=color['SignColumn']['bg'], deco='bold')

# lazy.nvim
color['LazyButton']        = dict(fg=p['gray']['4'], bg=p['gray']['01'])
color['LazyButtonActive']  = dict(fg=p['gray']['03'], bg=p['green']['4'], deco='bold')
color['LazyComment']       = dict(fg=p['skyblue']['2'], bg='NONE')
color['LazyCommit']        = '@variable.builtin'
color['LazyCommitIssue']   = 'Number'
color['LazyCommitScope']   = 'Italic'
color['LazyCommitType']    = 'Title'
color['LazyDimmed']        = 'Conceal'
color['LazyDir']           = '@markup.link'
color['LazyH1']            = dict(fg=p['magenta']['3'], bg=p['magenta']['0'])
color['LazyH2']            = dict(fg=p['skyblue']['2'], bg='NONE')
color['LazyLocal']         = 'LineNr'
color['LazyNoCond']        = 'DiagnosticWarn'
color['LazyNormal']        = dict(fg=p['gray']['3'], bg=p['gray']['02'],                 )
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
color['LazySpecial']       = dict(fg=p['gray']['6'], bg='NONE')
color['LazyTaskError']     = 'ErrorMsg'
color['LazyTaskOutput']    = dict(fg=p['gray']['4'], bg=p['gray']['02'])
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
color['rustFuncCall'] = dict(fg=p['blue']['2'])
color['rustQuestionMark'] = 'Operator'

# vim
color['vimVar'] = 'NONE'

# p00f/nvim-ts-rainbow
NVIM_TS_RAINBOW_DEFINITION = [
    dict(fg=p['gray']['2']),
    dict(fg=p['green']['3']),
    dict(fg=p['teal']['2']),
    dict(fg=p['skyblue']['2']),
    dict(fg=p['violet']['1']),
    dict(fg=p['magenta']['1']),
]
for i, hi in enumerate(NVIM_TS_RAINBOW_DEFINITION):
    color[f'rainbowcol{i + 1}'] = hi

# Apply
execute("""hi clear
if exists('syntax_on')
  syntax reset
endif
let g:colors_name = 'hydrangea'

set background=dark
""")

HI_ARGS = ['ctermfg', 'ctermbg', 'cterm', 'guifg', 'guibg', 'gui']

links = []
for name, cdef in color.items():
    if type(cdef) is str:
        # The definition is a string
        if cdef == 'NONE':
            # Disable
            execute('hi ' + name + ' NONE')
            links.append('hi! link ' + name + ' NONE')
        else:
            # Link
            links.append('hi! link ' + name + ' ' + cdef)
    elif type(cdef) is dict and len(cdef) > 0:
        # The definition is a dictionary
        def2 = {}
        for key, val in cdef.items():
            if key == 'fg':
                if type(val) is tuple:
                    def2['guifg'] = val[0]
                    def2['ctermfg'] = val[1]
                elif type(val) is str and val == 'NONE':
                    def2['guifg'] = val
                    def2['ctermfg'] = val
                elif type(val) is str:
                    def2['guifg'] = val
                elif type(val) is int:
                    def2['ctermfg'] = val
            elif key == 'bg':
                if type(val) is tuple:
                    def2['guibg'] = val[0]
                    def2['ctermbg'] = val[1]
                elif type(val) is str and val == 'NONE':
                    def2['guibg'] = val
                    def2['ctermbg'] = val
                elif type(val) is str:
                    def2['guibg'] = val
                elif type(val) is int:
                    def2['ctermbg'] = val
            elif key == 'deco':
                if type(val) is tuple:
                    def2['gui'] = val[0]
                    def2['cterm'] = val[1]
                elif type(val) is str:
                    def2['gui'] = val
                    def2['cterm'] = val
        def2 = sorted(def2.items(), key=lambda x: HI_ARGS.index(x[0]))
        execute('hi ' + name + ' ' + ' '.join(k + '=' + str(v) for k, v in def2))

for link in links:
    execute(link)
