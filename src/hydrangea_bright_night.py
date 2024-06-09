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

from colorscheme import generate
from hydrangea import generate_palette
from hydrangea_night import define

palette = generate_palette(32)
color = define(palette)
generate('Hydrangea Bright Night', color)
