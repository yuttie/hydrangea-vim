try:
    import vim

    def execute(cmd):
        vim.command(cmd)
except ImportError:
    def execute(cmd):
        print(cmd)


# Palette
base03       = ("#1d1f25", 234)
base02       = ("#2c303a", 236)
base01       = ("#343945", 237)
base00       = ("#3e4451", 238)
base0        = ("#555d6f",  59)
base1        = ("#626c82", 242)
base2        = ("#c6d0de", 252)
base3        = ("#e8eff8", 255)
red          = ("#e91e63", 197)
teal         = ("#36c2c2",  44)
teal_dark    = ("#134242",  23)
blue         = ("#537dd5",  68)
blue_light   = ('#91b5ff', 111)
violet       = ("#a46cff", 135)
violet_light = ("#ccacff", 183)
magenta      = ("#e242ac", 162)
diff_add_fg  = ("#52c4ff",  81)
diff_add_bg  = ("#0d435f",  24)
diff_add_hi  = ("#97dcff", 117)
diff_rm_fg   = ("#e242ac", 162)
diff_rm_bg   = ("#66184c",  53)
diff_rm_hi   = ("#fface3", 218)


# Definitions
color = {}
color['Normal']       = {'fg': base2,            'bg': base02,                                   }
color['Cursor']       = {'fg': 'NONE',           'bg': base3,                 'deco': 'NONE'     }
color['CursorIM']     = {'fg': 'NONE',           'bg': base3,                                    }
color['CursorLine']   = {'fg': 'NONE',           'bg': base01,                'deco': 'bold'     }
color['CursorColumn'] = {'fg': 'NONE',           'bg': base01,                'deco': 'NONE'     }
color['Visual']       = {'fg': 'NONE',           'bg': base00,                'deco': 'NONE'     }
color['VisualNOS']    = {'fg': 'fg',                                          'deco': 'underline'}

color['Folded']       = {'fg': ('#a0a8b0', 248), 'bg': ('#384048', 238),      'deco': 'NONE'     }
color['FoldColumn']   = {'fg': ('#a0a8b0', 248), 'bg': ('#384048', 238),      'deco': 'NONE'     }
color['Folded']       = {'fg': ('#d0e0f0', 253), 'bg': ('#202020', 234),      'deco': 'NONE'     }
color['FoldColumn']   = {'fg': ('#c0c0d0',   7), 'bg': ('#363946', 237),      'deco': 'NONE'     }
color['Title']        = {'fg': ('#f6f3e8', 255), 'bg': 'NONE',                'deco': 'bold'     }
color['StatusLine']   = {'fg': base2,            'bg': base00,                'deco': 'NONE'     }
color['StatusLineNC'] = {'fg': base0,            'bg': base01,                'deco': 'NONE'     }
color['VertSplit']    = {'fg': base01,           'bg': base01,                'deco': 'NONE'     }
color['LineNr']       = {'fg': base0,            'bg': base01,                'deco': 'NONE'     }
color['CursorLineNr'] = {'fg': base3,            'bg': base0,                 'deco': 'bold'     }
color['SpecialKey']   = {'fg': ('#808080',   8), 'bg': ('#343434',   8),      'deco': 'NONE'     }
color['NonText']      = {'fg': base0,            'bg': base02,                'deco': 'NONE'     }
color['MatchParen']   = {'fg': ('#ff0000',   9), 'bg': 'NONE',                'deco': 'bold'     }

color['Comment']      = {'fg': base0,                                         'deco': 'NONE'     }
color['Constant']     = {'fg': teal,             "bg": teal_dark,             'deco': 'NONE'     }
color['String']       = 'Constant'
color['Number']       = 'Constant'
color['Identifier']   = {'fg': base3,                                         'deco': 'bold'     }
color['Function']     = {'fg': base3,                                         'deco': 'bold'     }
color['Statement']    = {'fg': blue,                                          'deco': 'bold'     }
color['Operator']     = {'fg': magenta,                                       'deco': 'NONE'     }
color['Include']      = {'fg': violet,                                        'deco': 'NONE'     }
color['PreProc']      = {'fg': violet_light,                                  'deco': 'NONE'     }
color['Type']         = {'fg': magenta,                                       'deco': 'NONE'     }
color['StorageClass'] = {'fg': blue,                                          'deco': 'bold'     }
color['Structure']    = {'fg': magenta,                                       'deco': 'NONE'     }
color['Typedef']      = {'fg': blue,                                          'deco': 'bold'     }
color['Special']      = {'fg': 'NONE',           'bg': 'NONE',                'deco': 'bold'     }
color['Underlined']   = {'fg': 'fg',                                          'deco': 'underline'}
color['Ignore']       = {'fg': 'bg'                                                              }
color['Error']        = {'fg': ('#800000',   1), 'bg': ('#d16464', 167),      'deco': 'bold'     }
color['Todo']         = {'fg': base2,            'bg': base02,                'deco': 'bold'     }

color['IncSearch']    = {'fg': base3,            'bg': violet_light,          'deco': 'NONE'     }
color['Search']       = {'fg': base3,            'bg': magenta,               'deco': 'NONE'     }
color['Pmenu']        = {'fg': base2,            'bg': base01,                'deco': 'NONE'     }
color['PmenuSel']     = {'fg': base3,            'bg': base00,                'deco': 'bold'     }
color['PmenuSbar']    = {                        'bg': base01,                'deco': 'NONE'     }
color['PmenuThumb']   = {                        'bg': base0,                 'deco': 'NONE'     }
color['TabLine']      = {'fg': base0,            'bg': base01,                'deco': 'NONE'     }
color['TabLineSel']   = {'fg': base02,           'bg': blue,                  'deco': 'bold'     }
color['TabLineFill']  = {'fg': base01,           'bg': base02,                'deco': 'underline'}

color['SpellBad']     = {                                                     'deco': 'undercurl'}
color['SpellCap']     = {                                                     'deco': 'undercurl'}
color['SpellRare']    = {                                                     'deco': 'undercurl'}
color['SpellLocal']   = {                                                     'deco': 'undercurl'}

color['DiffAdd']      = {'fg': diff_add_fg,      'bg': diff_add_bg,           'deco': 'NONE'     }
color['DiffChange']   = {'fg': diff_rm_fg,       'bg': diff_rm_bg,            'deco': 'NONE'     }
color['DiffDelete']   = {'fg': diff_rm_fg,       'bg': diff_rm_bg,            'deco': 'NONE'     }
color['DiffText']     = {'fg': diff_rm_hi,       'bg': diff_rm_bg,            'deco': 'bold'     }
                                                                              
color['diffAdded']    = {'fg': diff_add_fg,      'bg': diff_add_bg,           'deco': 'NONE'     }
color['diffRemoved']  = {'fg': diff_rm_fg,       'bg': diff_rm_bg,            'deco': 'NONE'     }

color['Directory']    = {'fg': ('#c0e0b0', 151),                              'deco': 'NONE'     }
color['ErrorMsg']     = {'fg': red,              'bg': 'NONE',                'deco': 'NONE'     }
color['SignColumn']   = {'fg': ('#9fafaf', 145), 'bg': color['LineNr']['bg'], 'deco': 'NONE'     }
color['MoreMsg']      = {'fg': ('#2e8b57',  29),                              'deco': 'NONE'     }
color['ModeMsg']      = {'fg': ('#76d5f8',  81), 'bg': 'NONE',                'deco': 'NONE'     }
color['Question']     = {'fg': 'fg',                                          'deco': 'NONE'     }
color['WarningMsg']   = {'fg': ('#e5786d', 174),                              'deco': 'NONE'     }
color['WildMenu']     = {'fg': base3,            'bg': base0,                 'deco': 'bold'     }
color['ColorColumn']  = {'fg': 'NONE',           'bg': ('#403630', 237),      'deco': 'NONE'     }

# GitGutter
color['GitGutterAdd']    = {'fg': diff_add_fg, 'bg': color['SignColumn']['bg'], 'deco': 'bold'}
color['GitGutterChange'] = {'fg': diff_rm_fg,  'bg': color['SignColumn']['bg'], 'deco': 'bold'}
color['GitGutterDelete'] = {'fg': diff_rm_fg,  'bg': color['SignColumn']['bg'], 'deco': 'bold'}

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
color['rustFuncCall'] = {'fg': blue_light}
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

for name, cdef in color.items():
    if type(cdef) is str:
        # The definition is a string
        if cdef == 'NONE':
            # Disable
            execute('highlight ' + name + ' NONE')
            execute('highlight link ' + name + ' NONE')
        else:
            # Link
            execute('highlight link ' + name + ' ' + cdef)
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
        execute('highlight ' + name + ' ' + ' '.join(k + '=' + str(v) for k, v in def2.items()))
