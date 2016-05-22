" Name:     hydrangea.vim --- Hydrangea theme for Vim
" Author:   Yuta Taniguchi <yuta.taniguchi.y.t@gmail.com>
" URL:      https://github.com/yuttie/hydrangea-theme
" Version:  3.0.0
" License:  The MIT License (MIT)
"     Copyright (c) 2015 Yuta Taniguchi
"
"     Permission is hereby granted, free of charge, to any person obtaining a copy
"     of this software and associated documentation files (the "Software"), to deal
"     in the Software without restriction, including without limitation the rights
"     to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
"     copies of the Software, and to permit persons to whom the Software is
"     furnished to do so, subject to the following conditions:
"
"     The above copyright notice and this permission notice shall be included in
"     all copies or substantial portions of the Software.
"
"     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
"     IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
"     FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL THE
"     AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
"     LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
"     OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
"     THE SOFTWARE.


hi clear
if exists('syntax_on')
  syntax reset
endif
let g:colors_name = 'hydrangea'

set background=dark


" Palette
let s:base03       = ["#121518", 233]
let s:base02       = ["#1f2329", 235]
let s:base01       = ["#34393f", 237]
let s:base00       = ["#484e55", 239]
let s:base0        = ["#626972", 242]
let s:base1        = ["#818994", 102]
let s:base2        = ["#aeb8c5", 249]
let s:base3        = ["#ecf4ff", 255]
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
let s:color['Normal']       = { 'fg': s:base2,          'bg': s:base02,                              }
let s:color['Cursor']       = { 'fg': 'NONE',           'bg': s:base3,           'deco': 'NONE'      }
let s:color['CursorIM']     = { 'fg': 'NONE',           'bg': s:base3,                               }
let s:color['CursorLine']   = { 'fg': 'NONE',           'bg': s:base01,          'deco': 'NONE'      }
let s:color['CursorColumn'] = { 'fg': 'NONE',           'bg': s:base01,          'deco': 'NONE'      }
let s:color['Visual']       = { 'fg': 'NONE',           'bg': s:base00,          'deco': 'NONE'      }
let s:color['VisualNOS']    = { 'fg': 'fg',                                      'deco': 'underline' }

let s:color['Folded']       = { 'fg': ['#a0a8b0', 248], 'bg': ['#384048', 238],  'deco': 'NONE'      }
let s:color['FoldColumn']   = { 'fg': ['#a0a8b0', 248], 'bg': ['#384048', 238],  'deco': 'NONE'      }
let s:color['Folded']       = { 'fg': ['#d0e0f0', 253], 'bg': ['#202020', 234],  'deco': 'NONE'      }
let s:color['FoldColumn']   = { 'fg': ['#c0c0d0',   7], 'bg': ['#363946', 237],  'deco': 'NONE'      }
let s:color['Title']        = { 'fg': ['#f6f3e8', 255], 'bg': 'NONE',            'deco': 'bold'      }
let s:color['StatusLine']   = { 'fg': s:base2,          'bg': s:base00,          'deco': 'NONE'      }
let s:color['StatusLineNC'] = { 'fg': s:base0,          'bg': s:base01,          'deco': 'NONE'      }
let s:color['VertSplit']    = { 'fg': s:base01,         'bg': s:base01,          'deco': 'NONE'      }
let s:color['LineNr']       = { 'fg': s:base0,          'bg': s:base01,          'deco': 'NONE'      }
let s:color['CursorLineNr'] = { 'fg': s:base2,          'bg': s:base01,          'deco': 'bold'      }
let s:color['SpecialKey']   = { 'fg': ['#808080',   8], 'bg': ['#343434',   8],  'deco': 'NONE'      }
let s:color['NonText']      = { 'fg': s:base01,         'bg': s:base03,          'deco': 'NONE'      }
let s:color['MatchParen']   = { 'fg': ['#ff0000',   9], 'bg': 'NONE',            'deco': 'bold'      }

let s:color['Comment']      = { 'fg': s:base0,                                   'deco': 'NONE'      }
let s:color['Constant']     = { 'fg': s:violet,                                  'deco': 'NONE'      }
let s:color['String']       = { 'fg': s:cyan,                                    'deco': 'NONE'      }
let s:color['Number']       = { 'fg': s:violet,                                  'deco': 'NONE'      }
let s:color['Identifier']   = { 'fg': s:green,                                   'deco': 'NONE'      }
let s:color['Function']     = { 'fg': s:yellow,                                  'deco': 'italic'    }
let s:color['Statement']    = { 'fg': s:blue,                                    'deco': 'NONE'      }
let s:color['Operator']     = { 'fg': s:yellow,                                  'deco': 'NONE'      }
let s:color['PreProc']      = { 'fg': s:magenta,                                 'deco': 'NONE'      }
let s:color['Type']         = { 'fg': s:violet,                                  'deco': 'NONE'      }
let s:color['StorageClass'] = { 'fg': s:blue,                                    'deco': 'NONE'      }
let s:color['Structure']    = { 'fg': s:blue,                                    'deco': 'NONE'      }
let s:color['Typedef']      = { 'fg': s:blue,                                    'deco': 'NONE'      }
let s:color['Special']      = { 'fg': s:magenta,                                 'deco': 'NONE'      }
let s:color['Underlined']   = { 'fg': 'fg',                                      'deco': 'underline' }
let s:color['Ignore']       = { 'fg': 'bg'                                                           }
let s:color['Error']        = { 'fg': ['#800000',   1], 'bg': ['#d16464', 167],  'deco': 'bold'      }
let s:color['Todo']         = { 'fg': s:base2,          'bg': s:base02,          'deco': 'bold'      }

let s:color['IncSearch']    = { 'fg': s:base02,         'bg': s:orange,          'deco': 'NONE'      }
let s:color['Search']       = { 'fg': s:base02,         'bg': s:yellow,          'deco': 'NONE'      }
let s:color['Pmenu']        = { 'fg': s:base2,          'bg': s:base01,          'deco': 'NONE'      }
let s:color['PmenuSel']     = { 'fg': s:base3,          'bg': s:base00,          'deco': 'bold'      }
let s:color['PmenuSbar']    = {                         'bg': s:base01,          'deco': 'NONE'      }
let s:color['PmenuThumb']   = {                         'bg': s:base0,           'deco': 'NONE'      }
let s:color['TabLine']      = { 'fg': s:base0,          'bg': s:base01,          'deco': 'NONE'      }
let s:color['TabLineSel']   = { 'fg': s:base02,         'bg': s:cyan,            'deco': 'bold'      }
let s:color['TabLineFill']  = { 'fg': s:base01,         'bg': s:base02,          'deco': 'underline' }

let s:color['SpellBad']     = {                                                  'deco': 'undercurl' }
let s:color['SpellCap']     = {                                                  'deco': 'undercurl' }
let s:color['SpellRare']    = {                                                  'deco': 'undercurl' }
let s:color['SpellLocal']   = {                                                  'deco': 'undercurl' }

let s:color['DiffAdd']      = { 'fg': s:green,          'bg': s:diff_added,      'deco': 'NONE'      }
let s:color['DiffChange']   = { 'fg': s:yellow,         'bg': s:diff_changed,    'deco': 'NONE'      }
let s:color['DiffDelete']   = { 'fg': s:red,            'bg': s:diff_removed,    'deco': 'NONE'      }
let s:color['DiffText']     = { 'fg': s:yellow,         'bg': s:diff_fine,       'deco': 'bold'      }

let s:color['diffAdded']    = { 'fg': s:green,          'bg': s:diff_added,      'deco': 'NONE'      }
let s:color['diffRemoved']  = { 'fg': s:red,            'bg': s:diff_removed,    'deco': 'NONE'      }

let s:color['Directory']    = { 'fg': ['#c0e0b0', 151],                          'deco': 'NONE'      }
let s:color['ErrorMsg']     = { 'fg': s:red,            'bg': 'NONE',            'deco': 'NONE'      }
let s:color['SignColumn']   = { 'fg': ['#9fafaf', 145], 'bg': s:color.LineNr.bg, 'deco': 'NONE'      }
let s:color['MoreMsg']      = { 'fg': ['#2e8b57',  29],                          'deco': 'NONE'      }
let s:color['ModeMsg']      = { 'fg': ['#76d5f8',  81], 'bg': 'NONE',            'deco': 'NONE'      }
let s:color['Question']     = { 'fg': 'fg',                                      'deco': 'NONE'      }
let s:color['WarningMsg']   = { 'fg': ['#e5786d', 174],                          'deco': 'NONE'      }
let s:color['WildMenu']     = { 'fg': s:base3,          'bg': s:base0,           'deco': 'bold'      }
let s:color['ColorColumn']  = { 'fg': 'NONE',           'bg': ['#403630', 237],  'deco': 'NONE'      }

" GitGutter
let s:color['GitGutterAdd']    = { 'fg': s:green,  'bg': s:color.SignColumn.bg, 'deco': 'bold' }
let s:color['GitGutterChange'] = { 'fg': s:yellow, 'bg': s:color.SignColumn.bg, 'deco': 'bold' }
let s:color['GitGutterDelete'] = { 'fg': s:red,    'bg': s:color.SignColumn.bg, 'deco': 'bold' }

" make
let s:color['makeIdent']      = 'Type'
let s:color['makeSpecTarget'] = 'Special'
let s:color['makeTarget']     = 'Function'
let s:color['makeCommands']   = 'NONE'

" php
let s:color['phpVarSelector'] = 'Identifier'
let s:color['phpIdentifier']  = 'NONE'
let s:color['phpFunctions']   = 'NONE'
let s:color['phpClasses']     = 'NONE'
let s:color['phpFunction']    = 'Function'
let s:color['phpClass']       = 'Type'

" vim
let s:color['vimVar'] = 'NONE'


" Apply
for [s:name, s:def] in items(s:color)
  if type(s:def) ==# 1
    " The definition is a string
    if s:def ==# 'NONE'
      " Disable
      execute 'highlight ' . s:name . ' NONE'
      execute 'highlight link ' . s:name . ' NONE'
    else
      " Link
      execute 'highlight link ' . s:name . ' ' . s:def
    endif
  elseif type(s:def) ==# 4 && len(s:def) > 0
    " The definition is a dictionary
    let s:def2 = {}
    for [s:key, s:val] in items(s:def)
      if s:key ==# 'fg'
        if type(s:val) ==# 3
          let s:def2.guifg = s:val[0]
          let s:def2.ctermfg = s:val[1]
        elseif type(s:val) ==# 1 && s:val ==# 'NONE'
          let s:def2.guifg = s:val
          let s:def2.ctermfg = s:val
        elseif type(s:val) ==# 1
          let s:def2.guifg = s:val
        elseif type(s:val) ==# 0
          let s:def2.ctermfg = s:val
        endif
      elseif s:key ==# 'bg'
        if type(s:val) ==# 3
          let s:def2.guibg = s:val[0]
          let s:def2.ctermbg = s:val[1]
        elseif type(s:val) ==# 1 && s:val ==# 'NONE'
          let s:def2.guibg = s:val
          let s:def2.ctermbg = s:val
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
          let s:def2.cterm = s:val
        endif
      endif
      unlet s:val
    endfor
    execute 'highlight ' . s:name . ' ' . join(values(map(copy(s:def2), 'v:key . "=" . v:val')), ' ')
  endif
  unlet s:def
endfor
