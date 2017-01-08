" Name:     hydrangea.vim --- Hydrangea theme for Vim
" Author:   Yuta Taniguchi <yuta.taniguchi.y.t@gmail.com>
" URL:      https://github.com/yuttie/hydrangea-theme
" Version:  3.0.0
" License:  The MIT License (MIT)
"     Copyright (c) 2015-2016 Yuta Taniguchi
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
let s:base03        = ["#1c1f26", 234]
let s:base02        = ["#2b303b", 236]
let s:base01        = ["#333946", 237]
let s:base00        = ["#3c4453", 238]
let s:base0         = ["#565f72",  59]
let s:base1         = ["#626c82", 242]
let s:base2         = ["#c1d0e3", 252]
let s:base3         = ["#dfedff", 255]
let s:red           = ["#e91e63", 197]
let s:aqua          = ["#36c399",  43]
let s:aqua_dark     = ["#114335", 237]
let s:cyan          = ["#1cc7de",  45]
let s:blue          = ["#6d88ff",  69]
let s:blue_dark     = ["#243166", 236]
let s:violet        = ["#b490ff", 141]
let s:magenta       = ["#e242ac", 169]
let s:magenta_light = ["#e481ce", 176]
let s:emacs         = ["#5955a9",  61]
let s:diff_add_fg   = ["#00bbff",  39]
let s:diff_add_bg   = ["#0d4a60", 238]
let s:diff_add_hi   = ["#97e3ff", 117]
let s:diff_rm_fg    = ["#e246ae", 169]
let s:diff_rm_bg    = ["#66184c",  89]
let s:diff_rm_hi    = ["#fface3", 218]


" Definitions
let s:color = {}
let s:color['Normal']       = { 'fg': s:base2,          'bg': s:base02,                              }
let s:color['Cursor']       = { 'fg': 'NONE',           'bg': s:base3,           'deco': 'NONE'      }
let s:color['CursorIM']     = { 'fg': 'NONE',           'bg': s:base3,                               }
let s:color['CursorLine']   = { 'fg': 'NONE',           'bg': s:base03,          'deco': 'NONE'      }
let s:color['CursorColumn'] = { 'fg': 'NONE',           'bg': s:base03,          'deco': 'NONE'      }
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
let s:color['CursorLineNr'] = { 'fg': s:base3,          'bg': s:base0,           'deco': 'bold'      }
let s:color['SpecialKey']   = { 'fg': ['#808080',   8], 'bg': ['#343434',   8],  'deco': 'NONE'      }
let s:color['NonText']      = { 'fg': s:base0,          'bg': s:base02,          'deco': 'NONE'      }
let s:color['MatchParen']   = { 'fg': ['#ff0000',   9], 'bg': 'NONE',            'deco': 'bold'      }

let s:color['Comment']      = { 'fg': s:base0,                                   'deco': 'NONE'      }
let s:color['Constant']     = { 'fg': s:violet,                                  'deco': 'NONE'      }
let s:color['String']       = { 'fg': s:aqua,           "bg": s:aqua_dark,       'deco': 'NONE'      }
let s:color['Number']       = { 'fg': s:blue,           "bg": s:blue_dark,       'deco': 'NONE'      }
let s:color['Identifier']   = { 'fg': s:base3,                                   'deco': 'bold'      }
let s:color['Function']     = { 'fg': s:base3,                                   'deco': 'bold'      }
let s:color['Statement']    = { 'fg': s:cyan,                                    'deco': 'bold'      }
let s:color['Operator']     = { 'fg': s:violet,                                  'deco': 'NONE'      }
let s:color['PreProc']      = { 'fg': s:magenta_light,                           'deco': 'NONE'      }
let s:color['Type']         = { 'fg': s:magenta,                                 'deco': 'NONE'      }
let s:color['StorageClass'] = { 'fg': s:cyan,                                    'deco': 'bold'      }
let s:color['Structure']    = { 'fg': s:violet,                                  'deco': 'NONE'      }
let s:color['Typedef']      = { 'fg': s:cyan,                                    'deco': 'bold'      }
let s:color['Special']      = { 'fg': 'fg',                                      'deco': 'NONE'      }
let s:color['Underlined']   = { 'fg': 'fg',                                      'deco': 'underline' }
let s:color['Ignore']       = { 'fg': 'bg'                                                           }
let s:color['Error']        = { 'fg': ['#800000',   1], 'bg': ['#d16464', 167],  'deco': 'bold'      }
let s:color['Todo']         = { 'fg': s:base2,          'bg': s:base02,          'deco': 'bold'      }

let s:color['IncSearch']    = { 'fg': s:base3,          'bg': s:magenta_light,   'deco': 'NONE'      }
let s:color['Search']       = { 'fg': s:base3,          'bg': s:magenta,         'deco': 'NONE'      }
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

let s:color['DiffAdd']      = { 'fg': s:diff_add_fg,    'bg': s:diff_add_bg,     'deco': 'NONE'      }
let s:color['DiffChange']   = { 'fg': s:diff_rm_fg,     'bg': s:diff_rm_bg,      'deco': 'NONE'      }
let s:color['DiffDelete']   = { 'fg': s:diff_rm_fg,     'bg': s:diff_rm_bg,      'deco': 'NONE'      }
let s:color['DiffText']     = { 'fg': s:diff_rm_hi,     'bg': s:diff_rm_bg,      'deco': 'bold'      }

let s:color['diffAdded']    = { 'fg': s:diff_add_fg,    'bg': s:diff_add_bg,     'deco': 'NONE'      }
let s:color['diffRemoved']  = { 'fg': s:diff_rm_fg,     'bg': s:diff_rm_bg,      'deco': 'NONE'      }

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
let s:color['GitGutterAdd']    = { 'fg': s:diff_add_fg, 'bg': s:color.SignColumn.bg, 'deco': 'bold' }
let s:color['GitGutterChange'] = { 'fg': s:diff_rm_fg,  'bg': s:color.SignColumn.bg, 'deco': 'bold' }
let s:color['GitGutterDelete'] = { 'fg': s:diff_rm_fg,  'bg': s:color.SignColumn.bg, 'deco': 'bold' }

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

" rust
let s:color['rustFuncCall'] = 'Normal'

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
