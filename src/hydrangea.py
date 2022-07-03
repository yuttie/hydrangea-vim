HEADER = """" Name:     hydrangea.vim --- Hydrangea theme for Vim
" Author:   Yuta Taniguchi <yuta.taniguchi.y.t@gmail.com>
" URL:      https://github.com/yuttie/hydrangea-vim
" Version:  5.0.0
" License:  MIT License
"""


from collections import OrderedDict

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


# Palette (LCH values were measured in GIMP 2.10.4)
base03       = ("#171c26", 235)  # L = 10, C =  8, H = 270
base02       = ("#232833", 236)  # L = 16, C =  8, H = 270
base01       = ("#303540", 238)  # L = 22, C =  8, H = 270
base00       = ("#4b505d", 241)  # L = 28, C =  8, H = 270
base0        = ("#465166", 252)  # L = 34, C = 14, H = 270
base1        = ("#96a1b9", 252)  # L = 60, C = 14, H = 270
base2        = ("#d3def7", 252)  # L = 86, C = 14, H = 270
red01        = ("#681c36",  52)  # L = ?, C = ?, H = ?
red1         = ("#e91e63", 161)  # L = ?, C = ?, H = ?
green1       = ("#98bf00", 106)  # L = ?, C = ?, H = ?
teal01       = ("#013435",  23)  # L = ?, C = ?, H = ?
teal2        = ("#019c9c",  44)  # L = ?, C = ?, H = ?
cyan01       = ("#023342",  23)  # L = 19, C = 18, H = 232
cyan1        = ("#0990b5",  38)  # L = 58, C = 38, H = 232
cyan3        = ("#9bdffc", 153)  # L = 85, C = 27, H = 232
skyblue01    = ("#002844", 0)
skyblue1     = ("#0487d8", 0)
blue1        = ("#466bb6",  68)  # L = 45.3, C = 45.0, H = 276.6
blue2        = ('#6d88ce', 111)  # L = ?, C = ?, H = ?
blue3        = ('#c9d4fd', 189)  # L = ?, C = ?, H = ?
violet01     = ("#35264a",  98)  # L = ?, C = ?, H = ?
violet0      = ("#5b4182",  98)  # L = ?, C = ?, H = ?
violet1      = ("#996ddb",  98)  # L = ?, C = ?, H = ?
violet2      = ("#c398fe", 183)  # L = ?, C = ?, H = ?
violet3      = ("#e2ccfe", 225)  # L = ?, C = ?, H = ?
magenta01    = ("#4a1d45",  89)  # L = 19, C = 30, H = 330
magenta1     = ("#a6549c", 162)  # L = ??, C = ??, H = 330
magenta3     = ("#f7c5ef", 218)  # L = 85, C = 27, H = 330


# Definitions
color = OrderedDict()
color['Normal']       = {'fg': base1,            'bg': base03,                                   }
color['Cursor']       = {'fg': 'NONE',           'bg': base2,                 'deco': 'NONE'     }
color['CursorIM']     = {'fg': 'NONE',           'bg': base2,                                    }
color['CursorLine']   = {'fg': 'NONE',           'bg': base02,                'deco': 'NONE'     }
color['CursorColumn'] = {'fg': 'NONE',           'bg': base02,                'deco': 'NONE'     }
color['Visual']       = {'fg': 'NONE',           'bg': base01,                'deco': 'NONE'     }
color['VisualNOS']    = {'fg': 'fg',                                          'deco': 'underline'}

color['Folded']       = {'fg': base1,            'bg': base02,                'deco': 'NONE'     }
color['FoldColumn']   = {'fg': base1,            'bg': base03,                'deco': 'NONE'     }
color['Title']        = {'fg': magenta1,         'bg': 'NONE',                'deco': 'bold'     }
color['StatusLine']   = {'fg': base1,            'bg': base01,                'deco': 'NONE'     }
color['StatusLineNC'] = {'fg': base00,           'bg': base02,                'deco': 'NONE'     }
color['VertSplit']    = {'fg': base02,           'bg': base02,                'deco': 'NONE'     }
color['LineNr']       = {'fg': base00,           'bg': base02,                'deco': 'NONE'     }
color['CursorLineNr'] = {'fg': base2,            'bg': base00,                'deco': 'bold'     }
color['SpecialKey']   = {'fg': cyan01,           'bg': cyan1,                 'deco': 'bold'     }
color['NonText']      = {'fg': base00,           'bg': base03,                'deco': 'NONE'     }
color['MatchParen']   = {'fg': red1,             'bg': 'NONE',                'deco': 'bold'     }

color['Comment']      = {'fg': base0,                                         'deco': 'NONE'     }
color['Constant']     = {'fg': cyan1,            'bg': 'NONE',                'deco': 'NONE'     }
color['String']       = {'fg': skyblue1,         'bg': skyblue01,             'deco': 'NONE'     }
color['Number']       = {'fg': cyan1,            'bg': cyan01,                'deco': 'NONE'     }
color['Identifier']   = {'fg': base2,                                         'deco': 'bold'     }
color['Function']     = {'fg': base2,                                         'deco': 'bold'     }
color['Statement']    = {'fg': blue1,                                         'deco': 'bold'     }
color['Operator']     = {'fg': magenta1,                                      'deco': 'NONE'     }
color['Include']      = {'fg': violet1,                                       'deco': 'NONE'     }
color['PreProc']      = {'fg': violet2,                                       'deco': 'NONE'     }
color['Type']         = {'fg': magenta1,                                      'deco': 'NONE'     }
color['StorageClass'] = {'fg': blue1,                                         'deco': 'bold'     }
color['Structure']    = {'fg': magenta1,                                      'deco': 'NONE'     }
color['Typedef']      = {'fg': blue1,                                         'deco': 'bold'     }
color['Special']      = {'fg': blue2,            'bg': 'NONE',                'deco': 'bold'     }
color['Underlined']   = {'fg': 'fg',                                          'deco': 'underline'}
color['Ignore']       = {'fg': 'bg'                                                              }
color['Error']        = {'fg': red1,             'bg': red01,                 'deco': 'bold'     }
color['Todo']         = {'fg': green1,           'bg': 'NONE',                'deco': 'bold'     }

color['IncSearch']    = {'fg': magenta3,         'bg': magenta1,              'deco': 'bold'     }
color['Search']       = {'fg': magenta3,         'bg': magenta1,              'deco': 'NONE'     }
color['Pmenu']        = {'fg': base1,            'bg': base02,                'deco': 'NONE'     }
color['PmenuSel']     = {'fg': base2,            'bg': base01,                'deco': 'bold'     }
color['PmenuSbar']    = {                        'bg': base02,                'deco': 'NONE'     }
color['PmenuThumb']   = {                        'bg': base00,                'deco': 'NONE'     }
color['TabLine']      = {'fg': base1,            'bg': base03,                'deco': 'NONE'     }
color['TabLineSel']   = {'fg': base03,           'bg': magenta1,              'deco': 'bold'     }
color['TabLineFill']  = {'fg': base1,            'bg': base03,                'deco': 'NONE'     }

color['SpellBad']     = {                                                     'deco': 'undercurl'}
color['SpellCap']     = {                                                     'deco': 'undercurl'}
color['SpellRare']    = {                                                     'deco': 'undercurl'}
color['SpellLocal']   = {                                                     'deco': 'undercurl'}

color['DiffAdd']      = {'fg': cyan1,            'bg': cyan01,                'deco': 'NONE'     }
color['DiffDelete']   = {'fg': magenta1,         'bg': magenta01,             'deco': 'NONE'     }
color['DiffChange']   = {'fg': violet1,          'bg': violet01,              'deco': 'NONE'     }
color['DiffText']     = {'fg': violet2,          'bg': violet0,               'deco': 'bold'     }

color['Directory']    = {'fg': teal2,                                         'deco': 'NONE'     }
color['ErrorMsg']     = {'fg': red1,             'bg': 'NONE',                'deco': 'NONE'     }
color['SignColumn']   = {'fg': base1,            'bg': color['LineNr']['bg'], 'deco': 'NONE'     }
color['MoreMsg']      = {'fg': blue1,                                         'deco': 'NONE'     }
color['ModeMsg']      = {                                                     'deco': 'bold'     }
color['Question']     = {'fg': 'fg',                                          'deco': 'NONE'     }
color['WarningMsg']   = {'fg': red1,                                          'deco': 'NONE'     }
color['WildMenu']     = {'fg': base2,            'bg': base00,                'deco': 'bold'     }
color['ColorColumn']  = {'fg': 'NONE',           'bg': red01,                 'deco': 'NONE'     }

# [Tree-sitter](https://github.com/nvim-treesitter/nvim-treesitter)
color['TSAttribute'] = 'Special'
color['TSBoolean'] = 'Constant'
color['TSCharacter'] = 'Constant'
color['TSComment'] = 'Comment'
color['TSConstructor'] = 'Identifier'
color['TSConditional'] = 'Statement'
color['TSConstant'] = 'Constant'
color['TSConstBuiltin'] = 'Constant'
color['TSConstMacro'] = 'Constant'
color['TSError'] = 'Error'
color['TSException'] = 'Statement'
color['TSField'] = 'Identifier'
color['TSFloat'] = 'Constant'
color['TSFunction'] = 'Function'
color['TSInclude'] = 'Statement'
color['TSKeyword'] = 'Statement'
color['TSKeywordFunction'] = 'Statement'
color['TSLabel'] = 'Special'
color['TSNamespace'] = 'Constant'
color['TSNumber'] = 'Number'
color['TSOperator'] = 'Operator'
color['TSParameter'] = {'fg': ('#dafd89', 0), }
color['TSParameterReference'] = 'Normal'
color['TSProperty'] = 'TSField'
color['TSPunctDelimiter'] = 'Normal'
color['TSPunctBracket'] = 'Normal'
color['TSPunctSpecial'] = 'Special'
color['TSRepeat'] = 'Statement'
color['TSString'] = 'String'
color['TSStringRegex'] = 'String'
color['TSStringEscape'] = 'Special'
color['TSTag'] = 'htmlTagName'
color['TSTagAttribute'] = 'htmlArg'
color['TSTagDelimiter'] = 'htmlTagName'
color['TSText'] = 'Normal'
color['TSTitle'] = 'Title'
color['TSType'] = 'Type'
color['TSTypeBuiltin'] = 'Type'
color['TSVariable'] = 'Identifier'
color['TSVariableBuiltin'] = 'Statement'

# GitGutter
color['GitGutterAdd']    = {'fg': cyan1,       'bg': color['SignColumn']['bg'], 'deco': 'bold'}
color['GitGutterChange'] = {'fg': magenta1,    'bg': color['SignColumn']['bg'], 'deco': 'bold'}
color['GitGutterDelete'] = {'fg': magenta1,    'bg': color['SignColumn']['bg'], 'deco': 'bold'}

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
color['rustFuncCall'] = {'fg': blue2}
color['rustQuestionMark'] = 'Operator'

# vim
color['vimVar'] = 'NONE'


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
            links.append('hi link ' + name + ' NONE')
        else:
            # Link
            links.append('hi link ' + name + ' ' + cdef)
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
