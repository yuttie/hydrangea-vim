" Name:     hydrangea.vim --- Hydrangea theme for Vim
" Author:   Yuta Taniguchi <yuta.taniguchi.y.t@gmail.com>
" URL:      https://github.com/yuttie/hydrangea-theme
" Version:  2.0.0

hi clear
if exists('syntax_on')
  syntax reset
endif
let g:colors_name = 'hydrangea'

set background=dark


" Palette
let s:base4        = ["#202226", 235]
let s:base3        = ["#303338", 236]
let s:base2        = ["#40434a", 238]
let s:base1        = ["#585c64",  59]
let s:base0        = ["#80848d", 102]
let s:base_1       = ["#d0d5de", 188]
let s:base_2       = ["#f0f5ff", 255]
let s:red          = ["#b05353", 131]
let s:orange       = ["#c8946d", 173]
let s:yellow       = ["#e4c374", 179]
let s:green        = ["#a0bc65", 143]
let s:cyan         = ["#88b8b0", 109]
let s:blue         = ["#7aa4c9", 110]
let s:violet       = ["#887cb2", 103]
let s:magenta      = ["#b577a7", 139]

let s:diff_added   = ["#323e1b",  58]
let s:diff_removed = ["#532626",  52]
let s:diff_changed = ["#594913",  58]
let s:diff_fine    = ["#81691b",  94]


" Definitions
let s:color = {}
let s:color['Normal']       = { 'fg': s:base_1,         'bg': s:base4,                                   }
let s:color['Cursor']       = { 'fg': 'NONE',           'bg': s:base_1,         'deco': 'NONE'           }
let s:color['CursorIM']     = { 'fg': 'NONE',           'bg': s:base_1,                                  }
let s:color['CursorLine']   = { 'fg': 'NONE',           'bg': s:base3,          'deco': 'NONE'           }
let s:color['CursorColumn'] = { 'fg': 'NONE',           'bg': s:base3,          'deco': 'NONE'           }
let s:color['Visual']       = { 'fg': 'NONE',           'bg': s:base2,          'deco': 'NONE'           }
let s:color['VisualNOS']    = { 'fg': 'fg',                                     'deco': 'underline'      }

let s:color['Folded']       = { 'fg': ['#a0a8b0', 248], 'bg': ['#384048', 238], 'deco': 'NONE'           }
let s:color['FoldColumn']   = { 'fg': ['#a0a8b0', 248], 'bg': ['#384048', 238], 'deco': 'NONE'           }
let s:color['Folded']       = { 'fg': ['#d0e0f0', 253], 'bg': ['#202020', 234], 'deco': 'NONE'           }
let s:color['FoldColumn']   = { 'fg': ['#c0c0d0',   7], 'bg': ['#363946', 237], 'deco': 'NONE'           }
let s:color['Title']        = { 'fg': ['#f6f3e8', 255], 'bg': 'NONE',           'deco': 'bold'           }
let s:color['StatusLine']   = { 'fg': s:base_2,         'bg': s:base2,          'deco': 'NONE'           }
let s:color['StatusLineNC'] = { 'fg': s:base0,          'bg': s:base3,          'deco': 'NONE'           }
let s:color['VertSplit']    = { 'fg': s:base0,          'bg': s:base2,          'deco': 'NONE'           }
let s:color['LineNr']       = { 'fg': s:base1,          'bg': s:base3,          'deco': 'NONE'           }
let s:color['CursorLineNR'] = { 'fg': s:base_2,         'bg': s:base3,          'deco': 'bold'           }
let s:color['SpecialKey']   = { 'fg': ['#808080',   8], 'bg': ['#343434',   8], 'deco': 'NONE'           }
let s:color['NonText']      = { 'fg': s:base1,          'bg': s:base4,          'deco': 'NONE'           }
let s:color['MatchParen']   = { 'fg': ['#ff0000',   9], 'bg': 'NONE',           'deco': 'bold'           }
let s:color['Pmenu']        = { 'fg': ['#f6f3e8', 255], 'bg': ['#444444', 238]                           }
let s:color['PmenuSel']     = { 'fg': ['#000000',   0], 'bg': ['#cae682', 186]                           }

let s:color['Comment']      = { 'fg': s:base1,                                  'deco': 'NONE'           }
let s:color['Constant']     = { 'fg': s:violet,                                 'deco': 'NONE'           }
let s:color['String']       = { 'fg': s:cyan,                                   'deco': 'NONE'           }
let s:color['Number']       = { 'fg': s:red,                                    'deco': 'NONE'           }
let s:color['Identifier']   = { 'fg': s:green,                                  'deco': 'NONE'           }
let s:color['Function']     = { 'fg': s:yellow,                                 'deco': 'italic'         }
let s:color['Statement']    = { 'fg': s:blue,                                   'deco': 'NONE'           }
let s:color['Operator']     = { 'fg': s:yellow,                                 'deco': 'NONE'           }
let s:color['PreProc']      = { 'fg': s:magenta,                                'deco': 'NONE'           }
let s:color['Type']         = { 'fg': s:violet,                                 'deco': 'NONE'           }
let s:color['StorageClass'] = { 'fg': s:blue,                                   'deco': 'NONE'           }
let s:color['Structure']    = { 'fg': s:blue,                                   'deco': 'NONE'           }
let s:color['Typedef']      = { 'fg': s:blue,                                   'deco': 'NONE'           }
let s:color['Special']      = { 'fg': s:magenta,                                'deco': 'NONE'           }
let s:color['Underlined']   = { 'fg': 'fg',                                     'deco': 'underline'      }
let s:color['Ignore']       = { 'fg': 'bg'                                                               }
let s:color['Error']        = { 'fg': ['#800000',   1], 'bg': ['#d16464', 167], 'deco': 'bold'           }
let s:color['Todo']         = { 'fg': ['#000000',   0], 'bg': ['#ffff00',  11], 'deco': 'bold'           }

let s:color['IncSearch']    = { 'fg': s:base4,          'bg': s:orange,         'deco': 'NONE'           }
let s:color['Search']       = {                         'bg': s:yellow,         'deco': 'NONE'           }
let s:color['PMenuSbar']    = {                         'bg': ['#505860', 240], 'deco': 'NONE'           }
let s:color['PMenuThumb']   = {                         'bg': ['#808890', 102], 'deco': 'NONE'           }
let s:color['TabLine']      = { 'fg': s:base1,          'bg': s:base3,          'deco': 'NONE'           }
let s:color['TabLineSel']   = { 'fg': s:cyan,           'bg': s:base3,          'deco': 'bold'           }
let s:color['TabLineFill']  = { 'fg': ['#b6bf98', 144], 'bg': s:base3,          'deco': 'NONE'           }

let s:color['SpellBad']     = {                                                 'deco': 'undercurl'      }
let s:color['SpellCap']     = {                                                 'deco': 'undercurl'      }
let s:color['SpellRare']    = {                                                 'deco': 'undercurl'      }
let s:color['SpellLocal']   = {                                                 'deco': 'undercurl'      }

let s:color['DiffAdd']      = { 'fg': s:green,          'bg': s:diff_added,     'deco': 'NONE'           }
let s:color['DiffChange']   = { 'fg': s:yellow,         'bg': s:diff_changed,   'deco': 'NONE'           }
let s:color['DiffDelete']   = { 'fg': s:red,            'bg': s:diff_removed,   'deco': 'NONE'           }
let s:color['DiffText']     = { 'fg': s:yellow,         'bg': s:diff_fine,      'deco': 'bold'           }

let s:color['diffAdded']    = { 'fg': s:green,          'bg': s:diff_added,     'deco': 'NONE'           }
let s:color['diffRemoved']  = { 'fg': s:red,            'bg': s:diff_removed,   'deco': 'NONE'           }

let s:color['Directory']    = { 'fg': ['#c0e0b0', 151],                         'deco': 'NONE'           }
let s:color['ErrorMsg']     = { 'fg': ['#ee0000',   9], 'bg': 'NONE',           'deco': 'NONE'           }
let s:color['SignColumn']   = { 'fg': ['#9fafaf', 145], 'bg': ['#181818', 234], 'deco': 'NONE'           }
let s:color['MoreMsg']      = { 'fg': ['#2e8b57',  29],                         'deco': 'NONE'           }
let s:color['ModeMsg']      = { 'fg': ['#76d5f8',  81], 'bg': 'NONE',           'deco': 'NONE'           }
let s:color['Question']     = { 'fg': 'fg',                                     'deco': 'NONE'           }
let s:color['WarningMsg']   = { 'fg': ['#e5786d', 174],                         'deco': 'NONE'           }
let s:color['WildMenu']     = { 'fg': ['#cae682', 186], 'bg': ['#363946', 237], 'deco': 'bold,underline' }
let s:color['ColorColumn']  = { 'fg': 'NONE',           'bg': ['#403630', 237], 'deco': 'NONE'           }

let s:color['phpFunctions'] = 'NONE'
let s:color['phpClasses']   = 'NONE'
let s:color['phpFunction']  = 'Function'
let s:color['phpClass']     = 'Type'


" Apply
for [s:name, s:def] in items(s:color)
  if type(s:def) ==# 1
    if s:def ==# 'NONE'
      " Disable
      execute 'highlight ' . s:name . ' NONE'
    else
      " Link
      execute 'highlight link ' . s:name . ' ' . s:def
    endif
  elseif type(s:def) ==# 4 && len(s:def) > 0
    let s:def2 = {}
    for [s:key, s:val] in items(s:def)
      if s:key ==# 'fg'
        if type(s:val) ==# 3
          let s:def2.guifg = s:val[0]
          let s:def2.ctermfg = s:val[1]
        elseif type(s:val) ==# 1
          let s:def2.guifg = s:val
        elseif type(s:val) ==# 0
          let s:def2.ctermfg = s:val
        endif
      elseif s:key ==# 'bg'
        if type(s:val) ==# 3
          let s:def2.guibg = s:val[0]
          let s:def2.ctermbg = s:val[1]
        elseif type(s:val) ==# 1
          let s:def2.guibg = s:val
        elseif type(s:val) ==# 0
          let s:def2.ctermbg = s:val
        endif
      elseif s:key ==# 'deco'
        if type(s:val) ==# 3
          let s:def2.gui = s:val[0]
          let s:def2.cterm = s:val[1]
        elseif type(s:val) ==# 1
          let s:def2.gui = s:val
        elseif type(s:val) ==# 0
          let s:def2.cterm = s:val
        endif
      endif
      unlet s:val
    endfor
    execute 'highlight ' . s:name . ' ' . join(values(map(copy(s:def2), 'v:key . "=" . v:val')), ' ')
  endif
  unlet s:def
endfor
