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

let s:base03        = ["#1d1f25", 234]
let s:base02        = ["#2c303a", 236]
let s:base01        = ["#343945", 237]
let s:base00        = ["#3e4451", 238]
let s:base0         = ["#555d6f",  59]
let s:base1         = ["#626c82", 242]
let s:base2         = ["#c6d0de", 252]
let s:base3         = ["#e8eff8", 255]
let s:red           = ["#e91e63", 197]
let s:teal          = ["#36c2c2",  44]
let s:teal_dark     = ["#134242",  23]
let s:blue          = ["#54a7eb",  75]
let s:blue_light    = ['#9fd3ed', 153]
let s:violet        = ["#a46cff", 135]
let s:violet_light  = ["#ccacff", 183]
let s:magenta       = ["#e242ac", 169]

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left     = [ [ s:base02,  s:base2         ], [ s:base2, s:base00 ] ]
let s:p.normal.middle   = [ [ s:base2,   s:base01        ],                       ]
let s:p.normal.right    = [ [ s:base03,  s:base1         ], [ s:base2, s:base00 ] ]

let s:p.insert.left     = [ [ s:base02,  s:teal          ], [ s:base2, s:base00 ] ]

let s:p.visual.left     = [ [ s:base02,  s:violet        ], [ s:base2, s:base00 ] ]
let s:p.replace.left    = [ [ s:base02,  s:magenta       ], [ s:base2, s:base00 ] ]

let s:p.inactive.left   = [ [ s:base01,  s:base0         ], [ s:base1, s:base00 ] ]
let s:p.inactive.middle = [ [ s:base0,   s:base01        ],                       ]
let s:p.inactive.right  = [ [ s:base01,  s:base0         ], [ s:base1, s:base00 ] ]

let s:p.normal.error    = [ [ s:red,     s:base01        ] ]
let s:p.normal.warning  = [ [ s:magenta, s:base00        ] ]

let s:p.tabline.left    = [ [ s:base02,  s:base1         ] ]
let s:p.tabline.middle  = [ [ s:base02,  s:base01        ] ]
let s:p.tabline.right   = [ [ s:base02,  s:base1         ] ]
let s:p.tabline.tabsel  = [ [ s:base02,  s:base2         ] ]

let g:lightline#colorscheme#hydrangea#palette = lightline#colorscheme#flatten(s:p)
