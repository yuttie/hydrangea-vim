" Author:   Yuta Taniguchi <yuta.taniguchi.y.t@gmail.com>
" URL:      https://github.com/yuttie/hydrangea-vim
" Version:  6.2.0
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

let s:base03    = ['#1b202a', 234]
let s:base02    = ['#232833', 235]
let s:base01    = ['#303540', 236]
let s:base00    = ['#4b505d', 239]
let s:base0     = ['#465166', 239]
let s:base1     = ['#96a1b9', 247]
let s:base2     = ['#d3def7', 189]
let s:red01     = ['#681c36', 237]
let s:red1      = ['#e91e63', 197]
let s:green1    = ['#98bf00', 106]
let s:green3    = ['#dafd89', 192]
let s:teal01    = ['#013435', 236]
let s:teal2     = ['#019c9c',  37]
let s:cyan01    = ['#023342', 236]
let s:cyan1     = ['#0990b5',  31]
let s:cyan3     = ['#9bdffc', 117]
let s:skyblue01 = ['#002844', 235]
let s:skyblue1  = ['#0487d8',  32]
let s:skyblue3  = ['#73c5ff', 189]
let s:blue1     = ['#466bb6',  25]
let s:blue2     = ['#6d88ce',  68]
let s:violet01  = ['#35264a', 236]
let s:violet0   = ['#5b4182',  60]
let s:violet1   = ['#996ddb',  98]
let s:violet2   = ['#c398fe', 177]
let s:violet3   = ['#e2ccfe', 189]
let s:magenta01 = ['#4a1d45',  53]
let s:magenta1  = ['#a6549c', 133]
let s:magenta3  = ['#f7c5ef', 225]

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
