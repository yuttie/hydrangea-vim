import warnings
warnings.filterwarnings('ignore')

try:
    import vim
    # Assuming this file is executed with `:py3file %`
    __file__ = vim.eval('expand("%")')
except ImportError:
    pass

import os
import sys
sys.path.insert(0, os.path.dirname(__file__))

import colorscheme
import hydrangea
import hydrangea_night
if 'vim' in vars() or 'vim' in globals():
    import importlib
    importlib.reload(colorscheme)
    importlib.reload(hydrangea)
    importlib.reload(hydrangea_night)

palette = hydrangea.generate_palette(35)
color = hydrangea_night.define(palette)
colorscheme.generate('Hydrangea Dark Night', color)
