HEADER = """" Name:     hydrangea.vim --- Hydrangea theme for Vim
" Author:   Yuta Taniguchi <yuta.taniguchi.y.t@gmail.com>
" URL:      https://github.com/yuttie/hydrangea-vim
" Version:  6.1.0
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
base03       = ('#1b202a', 234)
base02       = ('#232833', 235)
base01       = ('#303540', 236)
base00       = ('#4b505d', 239)
base0        = ('#465166', 239)
base1        = ('#96a1b9', 247)
base2        = ('#d3def7', 189)
red01        = ('#681c36', 237)
red1         = ('#e91e63', 197)
green1       = ('#98bf00', 106)
green3       = ('#dafd89', 192)
teal01       = ('#013435', 236)
teal2        = ('#019c9c',  37)
cyan01       = ('#023342', 236)
cyan1        = ('#0990b5',  31)
cyan3        = ('#9bdffc', 117)
skyblue01    = ('#002844', 235)
skyblue1     = ('#0487d8',  32)
skyblue3     = ('#73c5ff', 189)
blue1        = ('#466bb6',  25)
blue2        = ('#6d88ce',  68)
violet01     = ('#35264a', 236)
violet0      = ('#5b4182',  60)
violet1      = ('#996ddb',  98)
violet2      = ('#c398fe', 177)
violet3      = ('#e2ccfe', 189)
magenta01    = ('#4a1d45',  53)
magenta1     = ('#a6549c', 133)
magenta3     = ('#f7c5ef', 225)


# Definitions
color = OrderedDict()
color['Normal']       = dict(fg=base1,    bg=base03,                                )
color['Cursor']       = dict(fg='NONE',   bg=base2,                 deco='NONE'     )
color['CursorIM']     = dict(fg='NONE',   bg=base2,                                 )
color['CursorLine']   = dict(fg='NONE',   bg=base02,                deco='NONE'     )
color['CursorColumn'] = dict(fg='NONE',   bg=base02,                deco='NONE'     )
color['Visual']       = dict(fg='NONE',   bg=base01,                deco='NONE'     )
color['VisualNOS']    = dict(fg='fg',                               deco='underline')

color['Folded']       = dict(fg=base1,    bg=base02,                deco='NONE'     )
color['FoldColumn']   = dict(fg=base1,    bg=base03,                deco='NONE'     )
color['Title']        = dict(fg=magenta1, bg='NONE',                deco='bold'     )
color['StatusLine']   = dict(fg=base1,    bg=base01,                deco='NONE'     )
color['StatusLineNC'] = dict(fg=base00,   bg=base02,                deco='NONE'     )
color['VertSplit']    = dict(fg=base02,   bg=base02,                deco='NONE'     )
color['LineNr']       = dict(fg=base00,   bg=base02,                deco='NONE'     )
color['CursorLineNr'] = dict(fg=base2,    bg=base00,                deco='bold'     )
color['SpecialKey']   = dict(fg=cyan01,   bg=cyan1,                 deco='bold'     )
color['NonText']      = dict(fg=base00,   bg=base03,                deco='NONE'     )
color['MatchParen']   = dict(fg=red1,     bg='NONE',                deco='bold'     )

color['Comment']      = dict(fg=base0,                              deco='NONE'     )
color['Constant']     = dict(fg=cyan1,    bg='NONE',                deco='NONE'     )
color['String']       = dict(fg=skyblue1, bg=skyblue01,             deco='NONE'     )
color['Number']       = dict(fg=cyan1,    bg=cyan01,                deco='NONE'     )
color['Identifier']   = dict(fg=base1,                              deco='NONE'     )
color['Function']     = dict(fg=skyblue3,                           deco='NONE'     )
color['Statement']    = dict(fg=blue1,                              deco='bold'     )
color['Operator']     = dict(fg=base2,                              deco='bold'     )
color['Include']      = dict(fg=violet1,                            deco='NONE'     )
color['PreProc']      = dict(fg=violet2,                            deco='NONE'     )
color['Type']         = dict(fg=magenta1,                           deco='NONE'     )
color['StorageClass'] = dict(fg=blue1,                              deco='bold'     )
color['Structure']    = dict(fg=magenta1,                           deco='NONE'     )
color['Typedef']      = dict(fg=blue1,                              deco='bold'     )
color['Special']      = dict(fg=blue2,    bg='NONE',                deco='bold'     )
color['Underlined']   = dict(fg='fg',                               deco='underline')
color['Ignore']       = dict(fg='bg'                                                )
color['Error']        = dict(fg=red1,     bg=red01,                 deco='bold'     )
color['Todo']         = dict(fg=green1,   bg='NONE',                deco='bold'     )

color['IncSearch']    = dict(fg=magenta3, bg=magenta1,              deco='bold'     )
color['Search']       = dict(fg=magenta3, bg=magenta1,              deco='NONE'     )
color['Pmenu']        = dict(fg=base1,    bg=base02,                deco='NONE'     )
color['PmenuSel']     = dict(fg=base2,    bg=base01,                deco='bold'     )
color['PmenuSbar']    = dict(             bg=base02,                deco='NONE'     )
color['PmenuThumb']   = dict(             bg=base00,                deco='NONE'     )
color['TabLine']      = dict(fg=base1,    bg=base03,                deco='NONE'     )
color['TabLineSel']   = dict(fg=base03,   bg=magenta1,              deco='bold'     )
color['TabLineFill']  = dict(fg=base1,    bg=base03,                deco='NONE'     )

color['SpellBad']     = dict(                                       deco='undercurl')
color['SpellCap']     = dict(                                       deco='undercurl')
color['SpellRare']    = dict(                                       deco='undercurl')
color['SpellLocal']   = dict(                                       deco='undercurl')

# vimdiff
color['DiffAdd']      = dict(fg=cyan1,    bg=cyan01,                deco='NONE'     )
color['DiffDelete']   = dict(fg=magenta1, bg=magenta01,             deco='NONE'     )
color['DiffChange']   = dict(fg=violet1,  bg=violet01,              deco='NONE'     )
color['DiffText']     = dict(fg=violet2,  bg=violet0,               deco='bold'     )

# syntax/diff.vim
color['diffAdded']      = 'DiffAdd'
color['diffRemoved']   = 'DiffDelete'
color['diffChanged']   = 'DiffChange'

color['Directory']    = dict(fg=teal2,                              deco='NONE'     )
color['ErrorMsg']     = dict(fg=red1,     bg='NONE',                deco='NONE'     )
color['SignColumn']   = dict(fg=base1,    bg=color['LineNr']['bg'], deco='NONE'     )
color['MoreMsg']      = dict(fg=blue1,                              deco='NONE'     )
color['ModeMsg']      = dict(                                       deco='bold'     )
color['Question']     = dict(fg='fg',                               deco='NONE'     )
color['WarningMsg']   = dict(fg=red1,                               deco='NONE'     )
color['WildMenu']     = dict(fg=base2,    bg=base00,                deco='bold'     )
color['ColorColumn']  = dict(fg='NONE',   bg=red01,                 deco='NONE'     )

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
color['TSDanger'] = dict(fg=red1)
color['TSError'] = 'Error'
color['TSException'] = 'Statement'
color['TSField'] = 'Identifier'
color['TSFloat'] = 'Constant'
color['TSFunction'] = 'Function'
color['TSFuncBuiltin'] = 'Function'
color['TSInclude'] = 'Statement'
color['TSKeyword'] = 'Statement'
color['TSKeywordFunction'] = 'Statement'
color['TSLabel'] = 'Special'
color['TSNamespace'] = 'Constant'
color['TSNumber'] = 'Number'
color['TSOperator'] = 'Operator'
color['TSParameter'] = dict(fg=green3)
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
color['TSWarning'] = 'Todo'

# GitGutter
color['GitGutterAdd']    = dict(fg=cyan1,    bg=color['SignColumn']['bg'], deco='bold')
color['GitGutterChange'] = dict(fg=magenta1, bg=color['SignColumn']['bg'], deco='bold')
color['GitGutterDelete'] = dict(fg=magenta1, bg=color['SignColumn']['bg'], deco='bold')

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
color['rustFuncCall'] = dict(fg=blue2)
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
