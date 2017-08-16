" Name:     hydrangea.vim --- Hydrangea theme for Vim
" Author:   Yuta Taniguchi <yuta.taniguchi.y.t@gmail.com>
" URL:      https://github.com/yuttie/hydrangea-vim
" Version:  4.1.0
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

hi Normal ctermfg=252 ctermbg=235 guifg=#c3d0ec guibg=#1f232c
hi Cursor ctermfg=NONE ctermbg=255 cterm=NONE guifg=NONE guibg=#e3f2ff gui=NONE
hi CursorIM ctermfg=NONE ctermbg=255 guifg=NONE guibg=#e3f2ff
hi CursorLine ctermfg=NONE ctermbg=237 cterm=bold guifg=NONE guibg=#373d4a gui=bold
hi CursorColumn ctermfg=NONE ctermbg=237 cterm=NONE guifg=NONE guibg=#373d4a gui=NONE
hi Visual ctermfg=NONE ctermbg=239 cterm=NONE guifg=NONE guibg=#474e5c gui=NONE
hi VisualNOS cterm=underline guifg=fg gui=underline
hi Folded ctermfg=252 ctermbg=237 cterm=NONE guifg=#c3d0ec guibg=#373d4a gui=NONE
hi FoldColumn ctermfg=252 ctermbg=235 cterm=NONE guifg=#c3d0ec guibg=#1f232c gui=NONE
hi Title ctermfg=162 ctermbg=NONE cterm=bold guifg=#e242ac guibg=NONE gui=bold
hi StatusLine ctermfg=252 ctermbg=239 cterm=NONE guifg=#c3d0ec guibg=#474e5c gui=NONE
hi StatusLineNC ctermfg=243 ctermbg=237 cterm=NONE guifg=#6f788c guibg=#373d4a gui=NONE
hi VertSplit ctermfg=237 ctermbg=237 cterm=NONE guifg=#373d4a guibg=#373d4a gui=NONE
hi LineNr ctermfg=243 ctermbg=237 cterm=NONE guifg=#6f788c guibg=#373d4a gui=NONE
hi CursorLineNr ctermfg=255 ctermbg=243 cterm=bold guifg=#e3f2ff guibg=#6f788c gui=bold
hi SpecialKey ctermfg=23 ctermbg=44 cterm=bold guifg=#134242 guibg=#36c2c2 gui=bold
hi NonText ctermfg=243 ctermbg=235 cterm=NONE guifg=#6f788c guibg=#1f232c gui=NONE
hi MatchParen ctermfg=197 ctermbg=NONE cterm=bold guifg=#e91e63 guibg=NONE gui=bold
hi Comment ctermfg=243 cterm=NONE guifg=#6f788c gui=NONE
hi Constant ctermfg=44 ctermbg=23 cterm=NONE guifg=#36c2c2 guibg=#134242 gui=NONE
hi Identifier ctermfg=255 cterm=bold guifg=#e3f2ff gui=bold
hi Function ctermfg=255 cterm=bold guifg=#e3f2ff gui=bold
hi Statement ctermfg=68 cterm=bold guifg=#537dd5 gui=bold
hi Operator ctermfg=162 cterm=NONE guifg=#e242ac gui=NONE
hi Include ctermfg=98 cterm=NONE guifg=#996ddb gui=NONE
hi PreProc ctermfg=183 cterm=NONE guifg=#ceadff gui=NONE
hi Type ctermfg=162 cterm=NONE guifg=#e242ac gui=NONE
hi StorageClass ctermfg=68 cterm=bold guifg=#537dd5 gui=bold
hi Structure ctermfg=162 cterm=NONE guifg=#e242ac gui=NONE
hi Typedef ctermfg=68 cterm=bold guifg=#537dd5 gui=bold
hi Special ctermfg=111 ctermbg=NONE cterm=bold guifg=#91b5ff guibg=NONE gui=bold
hi Underlined cterm=underline guifg=fg gui=underline
hi Ignore guifg=bg
hi Error ctermfg=197 ctermbg=52 cterm=bold guifg=#e91e63 guibg=#792340 gui=bold
hi Todo ctermfg=252 ctermbg=235 cterm=bold guifg=#c3d0ec guibg=#1f232c gui=bold
hi IncSearch ctermfg=255 ctermbg=183 cterm=NONE guifg=#e3f2ff guibg=#ceadff gui=NONE
hi Search ctermfg=255 ctermbg=162 cterm=NONE guifg=#e3f2ff guibg=#e242ac gui=NONE
hi Pmenu ctermfg=252 ctermbg=237 cterm=NONE guifg=#c3d0ec guibg=#373d4a gui=NONE
hi PmenuSel ctermfg=255 ctermbg=239 cterm=bold guifg=#e3f2ff guibg=#474e5c gui=bold
hi PmenuSbar ctermbg=237 cterm=NONE guibg=#373d4a gui=NONE
hi PmenuThumb ctermbg=243 cterm=NONE guibg=#6f788c gui=NONE
hi TabLine ctermfg=243 ctermbg=237 cterm=NONE guifg=#6f788c guibg=#373d4a gui=NONE
hi TabLineSel ctermfg=235 ctermbg=68 cterm=bold guifg=#1f232c guibg=#537dd5 gui=bold
hi TabLineFill ctermfg=237 ctermbg=235 cterm=underline guifg=#373d4a guibg=#1f232c gui=underline
hi SpellBad cterm=undercurl gui=undercurl
hi SpellCap cterm=undercurl gui=undercurl
hi SpellRare cterm=undercurl gui=undercurl
hi SpellLocal cterm=undercurl gui=undercurl
hi DiffAdd ctermfg=81 ctermbg=24 cterm=NONE guifg=#52c4ff guibg=#0d435f gui=NONE
hi DiffChange ctermfg=162 ctermbg=53 cterm=NONE guifg=#e242ac guibg=#66184c gui=NONE
hi DiffDelete ctermfg=162 ctermbg=53 cterm=NONE guifg=#e242ac guibg=#66184c gui=NONE
hi DiffText ctermfg=218 ctermbg=53 cterm=bold guifg=#fface3 guibg=#66184c gui=bold
hi diffAdded ctermfg=81 ctermbg=24 cterm=NONE guifg=#52c4ff guibg=#0d435f gui=NONE
hi diffRemoved ctermfg=162 ctermbg=53 cterm=NONE guifg=#e242ac guibg=#66184c gui=NONE
hi Directory ctermfg=44 cterm=NONE guifg=#36c2c2 gui=NONE
hi ErrorMsg ctermfg=197 ctermbg=NONE cterm=NONE guifg=#e91e63 guibg=NONE gui=NONE
hi SignColumn ctermfg=252 ctermbg=237 cterm=NONE guifg=#c3d0ec guibg=#373d4a gui=NONE
hi MoreMsg ctermfg=68 cterm=NONE guifg=#537dd5 gui=NONE
hi ModeMsg cterm=bold gui=bold
hi Question cterm=NONE guifg=fg gui=NONE
hi WarningMsg ctermfg=197 cterm=NONE guifg=#e91e63 gui=NONE
hi WildMenu ctermfg=255 ctermbg=243 cterm=bold guifg=#e3f2ff guibg=#6f788c gui=bold
hi ColorColumn ctermfg=NONE ctermbg=52 cterm=NONE guifg=NONE guibg=#792340 gui=NONE
hi GitGutterAdd ctermfg=81 ctermbg=237 cterm=bold guifg=#52c4ff guibg=#373d4a gui=bold
hi GitGutterChange ctermfg=162 ctermbg=237 cterm=bold guifg=#e242ac guibg=#373d4a gui=bold
hi GitGutterDelete ctermfg=162 ctermbg=237 cterm=bold guifg=#e242ac guibg=#373d4a gui=bold
hi makeCommands NONE
hi phpIdentifier NONE
hi phpFunctions NONE
hi phpClasses NONE
hi rustFuncCall ctermfg=111 guifg=#91b5ff
hi vimVar NONE
hi link String Constant
hi link Number Constant
hi link makeIdent Type
hi link makeSpecTarget Special
hi link makeTarget Function
hi link makeCommands NONE
hi link phpVarSelector Identifier
hi link phpIdentifier NONE
hi link phpFunctions NONE
hi link phpClasses NONE
hi link phpFunction Function
hi link phpClass Type
hi link rustQuestionMark Operator
hi link vimVar NONE
