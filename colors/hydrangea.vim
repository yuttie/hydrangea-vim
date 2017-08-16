" Name:     hydrangea.vim --- Hydrangea theme for Vim
" Author:   Yuta Taniguchi <yuta.taniguchi.y.t@gmail.com>
" URL:      https://github.com/yuttie/hydrangea-vim
" Version:  4.0.1
" License:  The MIT License (MIT)
"     Copyright (c) 2015-2017 Yuta Taniguchi
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

hi Normal guibg=#2c303a ctermbg=236 ctermfg=252 guifg=#c6d0de
hi Cursor gui=NONE cterm=NONE guifg=NONE ctermfg=NONE guibg=#e8eff8 ctermbg=255
hi CursorIM guibg=#e8eff8 ctermbg=255 ctermfg=NONE guifg=NONE
hi CursorLine gui=bold cterm=bold guifg=NONE ctermfg=NONE guibg=#343945 ctermbg=237
hi CursorColumn gui=NONE cterm=NONE guifg=NONE ctermfg=NONE guibg=#343945 ctermbg=237
hi Visual gui=NONE cterm=NONE guifg=NONE ctermfg=NONE guibg=#3e4451 ctermbg=238
hi VisualNOS gui=underline cterm=underline guifg=fg
hi Folded gui=NONE cterm=NONE guifg=#c6d0de ctermfg=252 guibg=#343945 ctermbg=237
hi FoldColumn gui=NONE cterm=NONE guifg=#c6d0de ctermfg=252 guibg=#2c303a ctermbg=236
hi Title gui=bold cterm=bold guifg=#e242ac ctermfg=162 guibg=NONE ctermbg=NONE
hi StatusLine gui=NONE cterm=NONE guifg=#c6d0de ctermfg=252 guibg=#3e4451 ctermbg=238
hi StatusLineNC gui=NONE cterm=NONE guifg=#555d6f ctermfg=59 guibg=#343945 ctermbg=237
hi VertSplit gui=NONE cterm=NONE guifg=#343945 ctermfg=237 guibg=#343945 ctermbg=237
hi LineNr gui=NONE cterm=NONE guifg=#555d6f ctermfg=59 guibg=#343945 ctermbg=237
hi CursorLineNr gui=bold cterm=bold guifg=#e8eff8 ctermfg=255 guibg=#555d6f ctermbg=59
hi SpecialKey gui=bold cterm=bold guifg=#134242 ctermfg=23 guibg=#36c2c2 ctermbg=44
hi NonText gui=NONE cterm=NONE guifg=#555d6f ctermfg=59 guibg=#2c303a ctermbg=236
hi MatchParen gui=bold cterm=bold guifg=#e91e63 ctermfg=197 guibg=NONE ctermbg=NONE
hi Comment gui=NONE cterm=NONE guifg=#555d6f ctermfg=59
hi Constant gui=NONE cterm=NONE guifg=#36c2c2 ctermfg=44 guibg=#134242 ctermbg=23
hi link String Constant
hi link Number Constant
hi Identifier gui=bold cterm=bold guifg=#e8eff8 ctermfg=255
hi Function gui=bold cterm=bold guifg=#e8eff8 ctermfg=255
hi Statement gui=bold cterm=bold guifg=#537dd5 ctermfg=68
hi Operator gui=NONE cterm=NONE guifg=#e242ac ctermfg=162
hi Include gui=NONE cterm=NONE guifg=#996ddb ctermfg=98
hi PreProc gui=NONE cterm=NONE guifg=#ceadff ctermfg=183
hi Type gui=NONE cterm=NONE guifg=#e242ac ctermfg=162
hi StorageClass gui=bold cterm=bold guifg=#537dd5 ctermfg=68
hi Structure gui=NONE cterm=NONE guifg=#e242ac ctermfg=162
hi Typedef gui=bold cterm=bold guifg=#537dd5 ctermfg=68
hi Special gui=bold cterm=bold guifg=#91b5ff ctermfg=111 guibg=NONE ctermbg=NONE
hi Underlined gui=underline cterm=underline guifg=fg
hi Ignore guifg=bg
hi Error gui=bold cterm=bold guifg=#e91e63 ctermfg=197 guibg=#792340 ctermbg=52
hi Todo gui=bold cterm=bold guifg=#c6d0de ctermfg=252 guibg=#2c303a ctermbg=236
hi IncSearch gui=NONE cterm=NONE guifg=#e8eff8 ctermfg=255 guibg=#ceadff ctermbg=183
hi Search gui=NONE cterm=NONE guifg=#e8eff8 ctermfg=255 guibg=#e242ac ctermbg=162
hi Pmenu gui=NONE cterm=NONE guifg=#c6d0de ctermfg=252 guibg=#343945 ctermbg=237
hi PmenuSel gui=bold cterm=bold guifg=#e8eff8 ctermfg=255 guibg=#3e4451 ctermbg=238
hi PmenuSbar guibg=#343945 cterm=NONE gui=NONE ctermbg=237
hi PmenuThumb guibg=#555d6f cterm=NONE gui=NONE ctermbg=59
hi TabLine gui=NONE cterm=NONE guifg=#555d6f ctermfg=59 guibg=#343945 ctermbg=237
hi TabLineSel gui=bold cterm=bold guifg=#2c303a ctermfg=236 guibg=#537dd5 ctermbg=68
hi TabLineFill gui=underline cterm=underline guifg=#343945 ctermfg=237 guibg=#2c303a ctermbg=236
hi SpellBad gui=undercurl cterm=undercurl
hi SpellCap gui=undercurl cterm=undercurl
hi SpellRare gui=undercurl cterm=undercurl
hi SpellLocal gui=undercurl cterm=undercurl
hi DiffAdd gui=NONE cterm=NONE guifg=#52c4ff ctermfg=81 guibg=#0d435f ctermbg=24
hi DiffChange gui=NONE cterm=NONE guifg=#e242ac ctermfg=162 guibg=#66184c ctermbg=53
hi DiffDelete gui=NONE cterm=NONE guifg=#e242ac ctermfg=162 guibg=#66184c ctermbg=53
hi DiffText gui=bold cterm=bold guifg=#fface3 ctermfg=218 guibg=#66184c ctermbg=53
hi diffAdded gui=NONE cterm=NONE guifg=#52c4ff ctermfg=81 guibg=#0d435f ctermbg=24
hi diffRemoved gui=NONE cterm=NONE guifg=#e242ac ctermfg=162 guibg=#66184c ctermbg=53
hi Directory gui=NONE cterm=NONE guifg=#36c2c2 ctermfg=44
hi ErrorMsg gui=NONE cterm=NONE guifg=#e91e63 ctermfg=197 guibg=NONE ctermbg=NONE
hi SignColumn gui=NONE cterm=NONE guifg=#c6d0de ctermfg=252 guibg=#343945 ctermbg=237
hi MoreMsg gui=NONE cterm=NONE guifg=#537dd5 ctermfg=68
hi ModeMsg gui=bold cterm=bold
hi Question gui=NONE cterm=NONE guifg=fg
hi WarningMsg gui=NONE cterm=NONE guifg=#e91e63 ctermfg=197
hi WildMenu gui=bold cterm=bold guifg=#e8eff8 ctermfg=255 guibg=#555d6f ctermbg=59
hi ColorColumn gui=NONE cterm=NONE guifg=NONE ctermfg=NONE guibg=#792340 ctermbg=52
hi GitGutterAdd gui=bold cterm=bold guifg=#52c4ff ctermfg=81 guibg=#343945 ctermbg=237
hi GitGutterChange gui=bold cterm=bold guifg=#e242ac ctermfg=162 guibg=#343945 ctermbg=237
hi GitGutterDelete gui=bold cterm=bold guifg=#e242ac ctermfg=162 guibg=#343945 ctermbg=237
hi link makeIdent Type
hi link makeSpecTarget Special
hi link makeTarget Function
hi makeCommands NONE
hi link makeCommands NONE
hi link phpVarSelector Identifier
hi phpIdentifier NONE
hi link phpIdentifier NONE
hi phpFunctions NONE
hi link phpFunctions NONE
hi phpClasses NONE
hi link phpClasses NONE
hi link phpFunction Function
hi link phpClass Type
hi rustFuncCall ctermfg=111 guifg=#91b5ff
hi link rustQuestionMark Operator
hi vimVar NONE
hi link vimVar NONE
