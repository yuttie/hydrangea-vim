# This file is intended to be imported and used only by hydrangea_*.py that
# appropriately setup sys.path for this module
from math import pi
from colorspace import oklch2hex, adjust_lightness

def generate_palette(base_lightness: float):
    """Generate a palette.

    Parameters
    ----------
    base_lightness : float
        Base lightness value.
        This must be a real number between 0 and 100.

    Returns
    -------
    dict[str, dict[int, str]]
        Palette data structure.
        First str keys are color names.
        Second int keys are lightness levels.
    """
    color_names = [
        'gray',
        'red',
        'yellowgreen',
        'green',
        'teal',
        'cyan',
        'skyblue',
        'blue',
        'violet',
        'magenta',
    ]

    # Base colors
    # L: [0, 100]
    # C: [0, 100]
    # H: [0, 360]
    base_color = dict()
    base_color['gray']        = oklch2hex((base_lightness,  2.0, 271.04))
    base_color['red']         = oklch2hex((base_lightness, 22.0, 352.63))
    base_color['yellowgreen'] = oklch2hex((base_lightness,  8.0, 117.85))
    base_color['green']       = oklch2hex((base_lightness,  8.0, 133.66))
    base_color['teal']        = oklch2hex((base_lightness,  8.0, 195.89))
    base_color['cyan']        = oklch2hex((base_lightness,  7.0, 224.90))
    base_color['skyblue']     = oklch2hex((base_lightness,  7.0, 253.51))
    base_color['blue']        = oklch2hex((base_lightness,  9.0, 265.57))
    base_color['violet']      = oklch2hex((base_lightness, 15.0, 299.18))
    base_color['magenta']     = oklch2hex((base_lightness,  9.0, 332.05))

    palette = dict()
    for cname in color_names:
        if cname in palette:
            continue
        palette[cname] = {
            -6: (adjust_lightness(base_color[cname], -30),  53),
            -5: (adjust_lightness(base_color[cname], -28),  53),
            -4: (adjust_lightness(base_color[cname], -24),  53),
            -3: (adjust_lightness(base_color[cname], -20),  53),
            -2: (adjust_lightness(base_color[cname], -16), 133),
            -1: (adjust_lightness(base_color[cname],  -8), 133),
            0:  (adjust_lightness(base_color[cname],   0), 133),
            +1: (adjust_lightness(base_color[cname],   8), 133),
            +2: (adjust_lightness(base_color[cname],  16), 225),
            +3: (adjust_lightness(base_color[cname],  24), 225),
            +4: (adjust_lightness(base_color[cname],  32), 225),
            +5: (adjust_lightness(base_color[cname],  40), 225),
            +6: (adjust_lightness(base_color[cname],  48), 225),
        }

    return palette
