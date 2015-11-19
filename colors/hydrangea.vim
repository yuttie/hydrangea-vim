" Name:     hydrangea.vim --- A hydrangea theme for Vim
" Author:   Yuta Taniguchi <yuta.taniguchi.y.t@gmail.com>
" URL:      https://github.com/yuttie/hydrangea-theme-vim

hi clear
if exists("syntax_on")
    syntax reset
endif
let colors_name = "steady-dark"

set background=dark


let s:base4   = "#202226"
let s:base3   = "#303338"
let s:base2   = "#40434a"
let s:base1   = "#585c64"
let s:base0   = "#80848d"
let s:base_1  = "#d0d5de"
let s:base_2  = "#f0f5ff"
let s:red     = "#b05353"
let s:orange  = "#c8946d"
let s:yellow  = "#e4c374"
let s:green   = "#a0bc65"
let s:cyan    = "#88b8b0"
let s:blue    = "#7aa4c9"
let s:violet  = "#887cb2"
let s:magenta = "#b577a7"

let s:diff_added   = "#323e1b"
let s:diff_removed = "#532626"
let s:diff_changed = "#594913"
let s:diff_fine    = "#81691b"

let s:base4_256   = "#1c1c1c"
let s:base3_256   = "#303030"
let s:base2_256   = "#444444"
let s:base1_256   = "#585858"
let s:base0_256   = "#808080"
let s:base_1_256  = "#d0d0d0"
let s:base_2_256  = "#eeeeee"
let s:red_256     = "#d18686"
let s:orange_256  = "#c8946d"
let s:yellow_256  = "#cfc770"
let s:green_256   = "#9eb576"
let s:cyan_256    = "#89b7b0"
let s:blue_256    = "#87aed1"
let s:violet_256  = "#9889c1"
let s:magenta_256 = "#b985ad"

let s:color = {}
let s:color['Normal']          = { 'guifg': s:base_1,      'guibg': s:base4,                               }
let s:color['Cursor']          = { 'guifg': 'NONE',        'guibg': s:base_1,      'gui': 'none'           }
let s:color['CursorIM']        = { 'guifg': 'NONE',        'guibg': s:base_1,                              }
let s:color['CursorLine']      = { 'guifg': 'NONE',        'guibg': s:base3,       'gui': 'none'           }
let s:color['CursorColumn']    = { 'guifg': 'NONE',        'guibg': s:base3,       'gui': 'none'           }
let s:color['Visual']          = { 'guifg': 'NONE',        'guibg': s:base2,       'gui': 'none'           }
let s:color['VisualNOS']       = { 'guifg': 'fg',                                  'gui': 'underline'      }

let s:color['Folded']          = { 'guifg': '#a0a8b0',     'guibg': '#384048',     'gui': 'none'           }
let s:color['FoldColumn']      = { 'guifg': '#a0a8b0',     'guibg': '#384048',     'gui': 'none'           }
let s:color['Folded']          = { 'guifg': '#d0e0f0',     'guibg': '#202020',     'gui': 'none'           }
let s:color['FoldColumn']      = { 'guifg': '#c0c0d0',     'guibg': '#363946',     'gui': 'none'           }
let s:color['Title']           = { 'guifg': '#f6f3e8',     'guibg': 'NONE',        'gui': 'bold'           }
let s:color['StatusLine']      = { 'guifg': '#f6f3e8',     'guibg': '#444444',     'gui': 'none'           }
let s:color['VertSplit']       = { 'guifg': '#444444',     'guibg': '#444444',     'gui': 'none'           }
let s:color['StatusLineNC']    = { 'guifg': '#857b6f',     'guibg': '#444444',     'gui': 'none'           }
let s:color['LineNr']          = { 'guifg': s:base1,       'guibg': s:base3,       'gui': 'none'           }
let s:color['CursorLineNR']    = { 'guifg': s:base_2,      'guibg': s:base3,       'gui': 'bold'           }
let s:color['SpecialKey']      = { 'guifg': '#808080',     'guibg': '#343434',     'gui': 'none'           }
let s:color['NonText']         = { 'guifg': '#808080',     'guibg': '#303030',     'gui': 'none'           }
let s:color['MatchParen']      = { 'guifg': '#ff0000',     'guibg': 'NONE',        'gui': 'bold'           }
let s:color['Pmenu']           = { 'guifg': '#f6f3e8',     'guibg': '#444444'                              }
let s:color['PmenuSel']        = { 'guifg': '#000000',     'guibg': '#cae682'                              }

let s:color['Comment']         = { 'guifg': s:base1,                               'gui': 'none'           }
let s:color['Constant']        = { 'guifg': s:violet,                              'gui': 'none'           }
let s:color['String']          = { 'guifg': s:cyan,                                'gui': 'none'           }
let s:color['Number']          = { 'guifg': s:red,                                 'gui': 'none'           }
let s:color['Identifier']      = { 'guifg': s:yellow,                              'gui': 'none'           }
let s:color['Function']        = { 'guifg': s:yellow,                              'gui': 'italic'         }
let s:color['Statement']       = { 'guifg': s:blue,                                'gui': 'none'           }
let s:color['Operator']        = { 'guifg': s:green,                               'gui': 'none'           }
let s:color['PreProc']         = { 'guifg': s:magenta,                             'gui': 'none'           }
let s:color['Type']            = { 'guifg': s:violet,                              'gui': 'none'           }
let s:color['StorageClass']    = { 'guifg': s:blue,                                'gui': 'none'           }
let s:color['Structure']       = { 'guifg': s:blue,                                'gui': 'none'           }
let s:color['Typedef']         = { 'guifg': s:blue,                                'gui': 'none'           }
let s:color['Special']         = { 'guifg': s:magenta,                             'gui': 'none'           }
let s:color['Underlined']      = { 'guifg': 'fg',                                  'gui': 'underline'      }
let s:color['Ignore']          = { 'guifg': 'bg'                                                           }
let s:color['Error']           = { 'guifg': '#800000',     'guibg': '#d16464',     'gui': 'bold'           }
let s:color['Todo']            = { 'guifg': '#000000',     'guibg': '#ffff00',     'gui': 'bold'           }

let s:color['IncSearch']       = { 'guifg': s:base4,       'guibg': s:orange,      'gui': 'none'           }
let s:color['Search']          = {                         'guibg': s:yellow,      'gui': 'none'           }
let s:color['PMenuSbar']       = {                         'guibg': '#505860',     'gui': 'none'           }
let s:color['PMenuThumb']      = {                         'guibg': '#808890',     'gui': 'none'           }
let s:color['TabLine']         = { 'guifg': s:base1,       'guibg': s:base3,       'gui': 'none'           }
let s:color['TabLineSel']      = { 'guifg': s:cyan,        'guibg': s:base3,       'gui': 'bold'           }
let s:color['TabLineFill']     = { 'guifg': '#b6bf98',     'guibg': s:base3,       'gui': 'none'           }

let s:color['SpellBad']        = {                                                 'gui': 'undercurl'      }
let s:color['SpellCap']        = {                                                 'gui': 'undercurl'      }
let s:color['SpellRare']       = {                                                 'gui': 'undercurl'      }
let s:color['SpellLocal']      = {                                                 'gui': 'undercurl'      }

let s:color['DiffAdd']         = { 'guifg': s:green,       'guibg': s:diff_added,  'gui': 'none'           }
let s:color['DiffChange']      = { 'guifg': s:yellow,      'guibg': s:diff_changed,'gui': 'none'           }
let s:color['DiffDelete']      = { 'guifg': s:red,         'guibg': s:diff_removed,'gui': 'none'           }
let s:color['DiffText']        = { 'guifg': s:yellow,      'guibg': s:diff_fine,   'gui': 'bold'           }

let s:color['diffAdded']       = { 'guifg': s:green,       'guibg': s:diff_added,  'gui': 'none'           }
let s:color['diffRemoved']     = { 'guifg': s:red,         'guibg': s:diff_removed,'gui': 'none'           }

let s:color['Directory']       = { 'guifg': '#c0e0b0',                             'gui': 'none'           }
let s:color['ErrorMsg']        = { 'guifg': '#ee0000',     'guibg': 'NONE',        'gui': 'none'           }
let s:color['SignColumn']      = { 'guifg': '#9fafaf',     'guibg': '#181818',     'gui': 'none'           }
let s:color['MoreMsg']         = { 'guifg': '#2e8b57',                             'gui': 'none'           }
let s:color['ModeMsg']         = { 'guifg': '#76d5f8',     'guibg': 'NONE',        'gui': 'none'           }
let s:color['Question']        = { 'guifg': 'fg',                                  'gui': 'none'           }
let s:color['WarningMsg']      = { 'guifg': '#e5786d',                             'gui': 'none'           }
let s:color['WildMenu']        = { 'guifg': '#cae682',     'guibg': '#363946',     'gui': 'bold,underline' }
let s:color['ColorColumn']     = { 'guifg': 'NONE',        'guibg': '#403630',     'gui': 'none'           }

hi link phpFunction Function
hi link phpClass    Type

for [name, def] in items(s:color)
    execute 'hi ' . name . ' ' . join(values(map(copy(def), 'v:key . "=" . v:val')), ' ')
endfor
