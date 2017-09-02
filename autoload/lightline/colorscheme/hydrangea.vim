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

let s:base03    = ["#1e222c", 235]  " L* = 44
let s:base02    = ["#2a303b", 236]  " L* = 50
let s:base01    = ["#3b4351", 238]  " L* = 58
let s:base00    = ["#586374", 241]  " L* = 68
let s:base2     = ["#c3d5ec", 252]  " L* = 93
let s:base3     = ["#edf5ff", 255]  " L* = 99
let s:red01     = ["#681c36",  52]
let s:red1      = ["#e91e63", 161]
let s:teal01    = ["#134242",  23]
let s:teal2     = ["#36c2c2",  44]
let s:cyan01    = ["#064253",  23]
let s:cyan1     = ["#169ec4",  38]
let s:cyan2     = ["#56c7ee",  81]
let s:cyan3     = ["#bcebfe", 153]
let s:blue1     = ["#537dd5",  68]
let s:blue2     = ['#8baafe', 111]
let s:blue3     = ['#c9d4fd', 189]
let s:violet1   = ["#996ddb",  98]
let s:violet2   = ["#c398fe", 183]
let s:violet3   = ["#e2ccfe", 225]
let s:magenta01 = ["#68024b",  89]
let s:magenta1  = ["#e242ac", 162]
let s:magenta2  = ["#fe7ecd", 213]
let s:magenta3  = ["#ffc3e4", 218]

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left     = [ [ s:base03,   s:blue1    ], [ s:base03, s:blue2    ] ]
let s:p.normal.middle   = [ [ s:base03,   s:blue3    ]                           ]
let s:p.normal.right    = [ [ s:base03,   s:blue1    ], [ s:base03, s:blue2    ] ]

let s:p.insert.left     = [ [ s:base03,   s:cyan1    ], [ s:base03, s:cyan2    ] ]
let s:p.insert.middle   = [ [ s:base03,   s:cyan3    ]                           ]
let s:p.insert.right    = [ [ s:base03,   s:cyan1    ], [ s:base03, s:cyan2    ] ]

let s:p.visual.left     = [ [ s:base03,   s:violet1  ], [ s:base03, s:violet2  ] ]
let s:p.visual.middle   = [ [ s:base03,   s:violet3  ]                           ]
let s:p.visual.right    = [ [ s:base03,   s:violet1  ], [ s:base03, s:violet2  ] ]

let s:p.replace.left    = [ [ s:base03,   s:magenta1 ], [ s:base03, s:magenta2 ] ]
let s:p.replace.middle  = [ [ s:base03,   s:magenta3 ]                           ]
let s:p.replace.right   = [ [ s:base03,   s:magenta1 ], [ s:base03, s:magenta2 ] ]

let s:p.inactive.left   = [ [ s:base03,   s:base00   ], [ s:base03, s:base01   ] ]
let s:p.inactive.middle = [ [ s:base03,   s:base01   ]                           ]
let s:p.inactive.right  = [ [ s:base03,   s:base00   ], [ s:base03, s:base01   ] ]

let s:p.normal.error    = [ [ s:red1,     s:base02   ]                           ]
let s:p.normal.warning  = [ [ s:violet1,  s:base01   ]                           ]

let s:p.tabline.left    = [ [ s:base2,    s:base01   ]                           ]
let s:p.tabline.middle  = [ [ s:base2,    s:base03   ]                           ]
let s:p.tabline.right   = [ [ s:base03,   s:violet1  ], [ s:base02, s:violet2  ] ]
let s:p.tabline.tabsel  = [ [ s:base03,   s:magenta1 ]                           ]

let g:lightline#colorscheme#hydrangea#palette = lightline#colorscheme#flatten(s:p)
