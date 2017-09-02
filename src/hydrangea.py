HEADER = """" Name:     hydrangea.vim --- Hydrangea theme for Vim
" Author:   Yuta Taniguchi <yuta.taniguchi.y.t@gmail.com>
" URL:      https://github.com/yuttie/hydrangea-vim
" Version:  4.1.0
" License:  MIT License
"""


from collections import OrderedDict

try:
    import vim

    def execute(cmd):
        vim.command(cmd)
except ImportError:
    print(HEADER)

    def execute(cmd):
        print(cmd)


# Palette
base03       = ("#1e222c", 235)  # L* = 44
base02       = ("#2a303b", 236)  # L* = 50
base01       = ("#3b4351", 238)  # L* = 58
base00       = ("#586374", 241)  # L* = 68
base2        = ("#c3d5ec", 252)  # L* = 93
base3        = ("#edf5ff", 255)  # L* = 99
red01        = ("#681c36",  52)
red1         = ("#e91e63", 161)
teal01       = ("#134242",  23)
teal2        = ("#36c2c2",  44)
cyan01       = ("#064253",  23)
cyan1        = ("#169ec4",  38)
cyan2        = ("#56c7ee",  81)
cyan3        = ("#bcebfe", 153)
blue1        = ("#537dd5",  68)
blue2        = ('#8baafe', 111)
blue3        = ('#c9d4fd', 189)
violet1      = ("#996ddb",  98)
violet2      = ("#c398fe", 183)
violet3      = ("#e2ccfe", 225)
magenta01    = ("#68024b",  89)
magenta1     = ("#e242ac", 162)
magenta2     = ("#fe7ecd", 213)
magenta3     = ("#ffc3e4", 218)


# Definitions
color = OrderedDict()
color['Normal']       = {'fg': base2,            'bg': base03,                                   }
color['Cursor']       = {'fg': 'NONE',           'bg': base3,                 'deco': 'NONE'     }
color['CursorIM']     = {'fg': 'NONE',           'bg': base3,                                    }
color['CursorLine']   = {'fg': 'NONE',           'bg': base02,                'deco': 'bold'     }
color['CursorColumn'] = {'fg': 'NONE',           'bg': base02,                'deco': 'NONE'     }
color['Visual']       = {'fg': 'NONE',           'bg': base01,                'deco': 'NONE'     }
color['VisualNOS']    = {'fg': 'fg',                                          'deco': 'underline'}

color['Folded']       = {'fg': base2,            'bg': base02,                'deco': 'NONE'     }
color['FoldColumn']   = {'fg': base2,            'bg': base03,                'deco': 'NONE'     }
color['Title']        = {'fg': magenta1,         'bg': 'NONE',                'deco': 'bold'     }
color['StatusLine']   = {'fg': base2,            'bg': base01,                'deco': 'NONE'     }
color['StatusLineNC'] = {'fg': base00,           'bg': base02,                'deco': 'NONE'     }
color['VertSplit']    = {'fg': base02,           'bg': base02,                'deco': 'NONE'     }
color['LineNr']       = {'fg': base00,           'bg': base02,                'deco': 'NONE'     }
color['CursorLineNr'] = {'fg': base3,            'bg': base00,                'deco': 'bold'     }
color['SpecialKey']   = {'fg': cyan01,           'bg': cyan1,                 'deco': 'bold'     }
color['NonText']      = {'fg': base00,           'bg': base03,                'deco': 'NONE'     }
color['MatchParen']   = {'fg': red1,             'bg': 'NONE',                'deco': 'bold'     }

color['Comment']      = {'fg': base00,                                        'deco': 'NONE'     }
color['Constant']     = {'fg': teal2,            "bg": teal01,                'deco': 'NONE'     }
color['String']       = 'Constant'
color['Number']       = {'fg': cyan2,            'bg': cyan01,                'deco': 'NONE'     }
color['Identifier']   = {'fg': base3,                                         'deco': 'bold'     }
color['Function']     = {'fg': base3,                                         'deco': 'bold'     }
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
color['Todo']         = {'fg': base2,            'bg': base03,                'deco': 'bold'     }

color['IncSearch']    = {'fg': base03,           'bg': cyan1,                 'deco': 'bold'     }
color['Search']       = {'fg': base03,           'bg': cyan2,                 'deco': 'NONE'     }
color['Pmenu']        = {'fg': base2,            'bg': base02,                'deco': 'NONE'     }
color['PmenuSel']     = {'fg': base3,            'bg': base01,                'deco': 'bold'     }
color['PmenuSbar']    = {                        'bg': base02,                'deco': 'NONE'     }
color['PmenuThumb']   = {                        'bg': base00,                'deco': 'NONE'     }
color['TabLine']      = {'fg': base2,            'bg': base03,                'deco': 'NONE'     }
color['TabLineSel']   = {'fg': base03,           'bg': magenta1,              'deco': 'bold'     }
color['TabLineFill']  = {'fg': base2,            'bg': base03,                'deco': 'NONE'     }

color['SpellBad']     = {                                                     'deco': 'undercurl'}
color['SpellCap']     = {                                                     'deco': 'undercurl'}
color['SpellRare']    = {                                                     'deco': 'undercurl'}
color['SpellLocal']   = {                                                     'deco': 'undercurl'}

color['DiffAdd']      = {'fg': cyan1,            'bg': cyan01,                'deco': 'NONE'     }
color['DiffChange']   = {'fg': magenta1,         'bg': magenta01,             'deco': 'NONE'     }
color['DiffDelete']   = {'fg': magenta1,         'bg': magenta01,             'deco': 'NONE'     }
color['DiffText']     = {'fg': magenta3,         'bg': magenta01,             'deco': 'bold'     }

color['diffAdded']    = {'fg': cyan1,            'bg': cyan01,                'deco': 'NONE'     }
color['diffRemoved']  = {'fg': magenta1,         'bg': magenta01,             'deco': 'NONE'     }

color['Directory']    = {'fg': teal2,                                         'deco': 'NONE'     }
color['ErrorMsg']     = {'fg': red1,             'bg': 'NONE',                'deco': 'NONE'     }
color['SignColumn']   = {'fg': base2,            'bg': color['LineNr']['bg'], 'deco': 'NONE'     }
color['MoreMsg']      = {'fg': blue1,                                         'deco': 'NONE'     }
color['ModeMsg']      = {                                                     'deco': 'bold'     }
color['Question']     = {'fg': 'fg',                                          'deco': 'NONE'     }
color['WarningMsg']   = {'fg': red1,                                          'deco': 'NONE'     }
color['WildMenu']     = {'fg': base3,            'bg': base00,                'deco': 'bold'     }
color['ColorColumn']  = {'fg': 'NONE',           'bg': red01,                 'deco': 'NONE'     }

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
