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

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left     = [ [ s:base02,  s:base2         ], [ s:base2, s:base00 ] ]
let s:p.normal.middle   = [ [ s:base1,   s:base01        ],                       ]
let s:p.normal.right    = [ [ s:base02,  s:base1         ], [ s:base2, s:base00 ] ]

let s:p.insert.left     = [ [ s:base02,  s:cyan          ], [ s:base2, s:base00 ] ]

let s:p.visual.left     = [ [ s:base02,  s:magenta_light ], [ s:base2, s:base00 ] ]
let s:p.replace.left    = [ [ s:base02,  s:red           ], [ s:base2, s:base00 ] ]

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
