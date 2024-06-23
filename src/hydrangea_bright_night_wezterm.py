import warnings
warnings.filterwarnings('ignore')

import os
import sys
sys.path.insert(0, os.path.dirname(__file__))

import hydrangea

p = hydrangea.generate_palette(40)

print(f'''\
# Hydrangea Bright Night
[colors]
foreground = "{p['gray'][+2][0]}"
background = "{p['gray'][-3][0]}"
cursor_bg = "{p['red'][-1][0]}"
cursor_border = "{p['red'][-1][0]}"
cursor_fg = "{p['gray'][-3][0]}"
selection_bg = "{p['cyan'][+1][0]}"
selection_fg = "{p['cyan'][+4][0]}"

ansi = [
    "{p['gray'       ][+0][0]}",
    "{p['red'        ][-2][0]}",
    "{p['green'      ][+0][0]}",
    "{p['yellowgreen'][+1][0]}",
    "{p['blue'       ][+0][0]}",
    "{p['violet'     ][+0][0]}",
    "{p['cyan'       ][+0][0]}",
    "{p['gray'       ][+0][0]}",
]
brights = [
    "{p['gray'       ][+3][0]}",
    "{p['red'        ][+1][0]}",
    "{p['green'      ][+3][0]}",
    "{p['yellowgreen'][+5][0]}",
    "{p['blue'       ][+3][0]}",
    "{p['violet'     ][+3][0]}",
    "{p['cyan'       ][+3][0]}",
    "{p['gray'       ][+3][0]}",
]
''')
