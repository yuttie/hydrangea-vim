" Name:     hydrangea.vim --- Hydrangea theme for Vim
" Author:   Yuta Taniguchi <yuta.taniguchi.y.t@gmail.com>
" URL:      https://github.com/yuttie/hydrangea-vim
" Version:  4.0.0
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

hi Type cterm=NONE ctermfg=162 gui=NONE guifg=#e242ac
hi phpFunctions NONE
hi link phpFunctions NONE
hi FoldColumn guibg=#2c303a gui=NONE ctermbg=236 cterm=NONE ctermfg=252 guifg=#c6d0de
hi Include cterm=NONE ctermfg=98 gui=NONE guifg=#996ddb
hi Structure cterm=NONE ctermfg=162 gui=NONE guifg=#e242ac
hi link phpClass Type
hi PmenuSel guibg=#3e4451 gui=bold ctermbg=238 cterm=bold ctermfg=255 guifg=#e8eff8
hi Cursor guibg=#e8eff8 gui=NONE ctermbg=255 cterm=NONE ctermfg=NONE guifg=NONE
hi VisualNOS cterm=underline gui=underline guifg=fg
hi Title guibg=NONE gui=bold ctermbg=NONE cterm=bold ctermfg=162 guifg=#e242ac
hi diffRemoved guibg=#66184c gui=NONE ctermbg=53 cterm=NONE ctermfg=162 guifg=#e242ac
hi Statement cterm=bold ctermfg=68 gui=bold guifg=#537dd5
hi link rustQuestionMark Operator
hi Typedef cterm=bold ctermfg=68 gui=bold guifg=#537dd5
hi Question cterm=NONE gui=NONE guifg=fg
hi vimVar NONE
hi link vimVar NONE
hi NonText guibg=#2c303a gui=NONE ctermbg=236 cterm=NONE ctermfg=59 guifg=#555d6f
hi VertSplit guibg=#343945 gui=NONE ctermbg=237 cterm=NONE ctermfg=237 guifg=#343945
hi DiffAdd guibg=#0d435f gui=NONE ctermbg=24 cterm=NONE ctermfg=81 guifg=#52c4ff
hi Comment cterm=NONE ctermfg=59 gui=NONE guifg=#555d6f
hi makeCommands NONE
hi link makeCommands NONE
hi WildMenu guibg=#555d6f gui=bold ctermbg=59 cterm=bold ctermfg=255 guifg=#e8eff8
hi Ignore guifg=bg
hi PmenuSbar guibg=#343945 cterm=NONE gui=NONE ctermbg=237
hi ErrorMsg guibg=NONE gui=NONE ctermbg=NONE cterm=NONE ctermfg=197 guifg=#e91e63
hi ColorColumn guibg=#792340 gui=NONE ctermbg=52 cterm=NONE ctermfg=NONE guifg=NONE
hi link phpVarSelector Identifier
hi SpellLocal cterm=undercurl gui=undercurl
hi Special guibg=NONE gui=bold ctermbg=NONE cterm=bold ctermfg=111 guifg=#91b5ff
hi IncSearch guibg=#ceadff gui=NONE ctermbg=183 cterm=NONE ctermfg=255 guifg=#e8eff8
hi phpIdentifier NONE
hi link phpIdentifier NONE
hi Constant guibg=#134242 gui=NONE ctermbg=23 cterm=NONE ctermfg=44 guifg=#36c2c2
hi Operator cterm=NONE ctermfg=162 gui=NONE guifg=#e242ac
hi DiffChange guibg=#66184c gui=NONE ctermbg=53 cterm=NONE ctermfg=162 guifg=#e242ac
hi Error guibg=#792340 gui=bold ctermbg=52 cterm=bold ctermfg=197 guifg=#e91e63
hi GitGutterChange guibg=#343945 gui=bold ctermbg=237 cterm=bold ctermfg=162 guifg=#e242ac
hi CursorColumn guibg=#343945 gui=NONE ctermbg=237 cterm=NONE ctermfg=NONE guifg=NONE
hi TabLine guibg=#343945 gui=NONE ctermbg=237 cterm=NONE ctermfg=59 guifg=#555d6f
hi Pmenu guibg=#343945 gui=NONE ctermbg=237 cterm=NONE ctermfg=252 guifg=#c6d0de
hi DiffText guibg=#66184c gui=bold ctermbg=53 cterm=bold ctermfg=218 guifg=#fface3
hi link Number Constant
hi DiffDelete guibg=#66184c gui=NONE ctermbg=53 cterm=NONE ctermfg=162 guifg=#e242ac
hi Directory cterm=NONE ctermfg=44 gui=NONE guifg=#36c2c2
hi Function cterm=bold ctermfg=255 gui=bold guifg=#e8eff8
hi CursorIM guibg=#e8eff8 ctermbg=255 ctermfg=NONE guifg=NONE
hi StatusLineNC guibg=#343945 gui=NONE ctermbg=237 cterm=NONE ctermfg=59 guifg=#555d6f
hi Search guibg=#e242ac gui=NONE ctermbg=162 cterm=NONE ctermfg=255 guifg=#e8eff8
hi Folded guibg=#343945 gui=NONE ctermbg=237 cterm=NONE ctermfg=252 guifg=#c6d0de
hi Visual guibg=#3e4451 gui=NONE ctermbg=238 cterm=NONE ctermfg=NONE guifg=NONE
hi SignColumn guibg=#343945 gui=NONE ctermbg=237 cterm=NONE ctermfg=252 guifg=#c6d0de
hi GitGutterDelete guibg=#343945 gui=bold ctermbg=237 cterm=bold ctermfg=162 guifg=#e242ac
hi rustFuncCall ctermfg=111 guifg=#91b5ff
hi SpellRare cterm=undercurl gui=undercurl
hi link makeTarget Function
hi SpellCap cterm=undercurl gui=undercurl
hi LineNr guibg=#343945 gui=NONE ctermbg=237 cterm=NONE ctermfg=59 guifg=#555d6f
hi MatchParen guibg=NONE gui=bold ctermbg=NONE cterm=bold ctermfg=197 guifg=#e91e63
hi Identifier cterm=bold ctermfg=255 gui=bold guifg=#e8eff8
hi diffAdded guibg=#0d435f gui=NONE ctermbg=24 cterm=NONE ctermfg=81 guifg=#52c4ff
hi SpecialKey guibg=#36c2c2 gui=bold ctermbg=44 cterm=bold ctermfg=23 guifg=#134242
hi PmenuThumb guibg=#555d6f cterm=NONE gui=NONE ctermbg=59
hi SpellBad cterm=undercurl gui=undercurl
hi TabLineSel guibg=#537dd5 gui=bold ctermbg=68 cterm=bold ctermfg=236 guifg=#2c303a
hi link String Constant
hi link makeIdent Type
hi Underlined cterm=underline gui=underline guifg=fg
hi link phpFunction Function
hi TabLineFill guibg=#2c303a gui=underline ctermbg=236 cterm=underline ctermfg=237 guifg=#343945
hi StatusLine guibg=#3e4451 gui=NONE ctermbg=238 cterm=NONE ctermfg=252 guifg=#c6d0de
hi phpClasses NONE
hi link phpClasses NONE
hi ModeMsg cterm=bold gui=bold
hi MoreMsg cterm=NONE ctermfg=44 gui=NONE guifg=#36c2c2
hi Todo guibg=#2c303a gui=bold ctermbg=236 cterm=bold ctermfg=252 guifg=#c6d0de
hi PreProc cterm=NONE ctermfg=183 gui=NONE guifg=#ceadff
hi CursorLineNr guibg=#555d6f gui=bold ctermbg=59 cterm=bold ctermfg=255 guifg=#e8eff8
hi WarningMsg cterm=NONE ctermfg=197 gui=NONE guifg=#e91e63
hi CursorLine guibg=#343945 gui=bold ctermbg=237 cterm=bold ctermfg=NONE guifg=NONE
hi StorageClass cterm=bold ctermfg=68 gui=bold guifg=#537dd5
hi Normal guibg=#2c303a ctermbg=236 ctermfg=252 guifg=#c6d0de
hi GitGutterAdd guibg=#343945 gui=bold ctermbg=237 cterm=bold ctermfg=81 guifg=#52c4ff
hi link makeSpecTarget Special
