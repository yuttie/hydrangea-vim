" Author:   Yuta Taniguchi <yuta.taniguchi.y.t@gmail.com>
" URL:      https://github.com/yuttie/hydrangea-theme
" Version:  2.0.2
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

let s:base4   = ["#202226", 235]
let s:base3   = ["#303338", 236]
let s:base2   = ["#40434a", 238]
let s:base1   = ["#585c64",  59]
let s:base0   = ["#80848d", 102]
let s:base_1  = ["#d0d5de", 188]
let s:base_2  = ["#f0f5ff", 255]
let s:red     = ["#b05353", 131]
let s:orange  = ["#c8946d", 173]
let s:yellow  = ["#e4c374", 179]
let s:green   = ["#a0bc65", 143]
let s:cyan    = ["#88b8b0", 109]
let s:blue    = ["#7aa4c9", 110]
let s:violet  = ["#887cb2", 103]
let s:magenta = ["#b577a7", 139]

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left     = [ [ s:base3,  s:violet ], [ s:base_1, s:base1 ] ]
let s:p.normal.middle   = [ [ s:base0,  s:base2  ],                       ]
let s:p.normal.right    = [ [ s:base3,  s:base0  ], [ s:base_1, s:base1 ] ]

let s:p.insert.left     = [ [ s:base3,  s:blue   ], [ s:base_1, s:base1 ] ]
let s:p.visual.left     = [ [ s:base3,  s:yellow ], [ s:base_1, s:base1 ] ]
let s:p.replace.left    = [ [ s:base3,  s:red    ], [ s:base_1, s:base1 ] ]

let s:p.inactive.left   = [ [ s:base0,  s:base1  ], [ s:green,  s:base2 ] ]
let s:p.inactive.middle = [ [ s:base0,  s:base3  ],                       ]
let s:p.inactive.right  = [ [ s:base3,  s:base1  ], [ s:base0, s:base2  ] ]

let s:p.normal.error    = [ [ s:red,    s:base2  ] ]
let s:p.normal.warning  = [ [ s:yellow, s:base1  ] ]

let s:p.tabline.left    = [ [ s:base0,  s:base2  ] ]
let s:p.tabline.middle  = [ [ s:base0,  s:base3  ] ]
let s:p.tabline.right   = [ [ s:base3,  s:base1  ] ]
let s:p.tabline.tabsel  = [ [ s:base3,  s:cyan   ] ]

let g:lightline#colorscheme#hydrangea#palette = lightline#colorscheme#flatten(s:p)
