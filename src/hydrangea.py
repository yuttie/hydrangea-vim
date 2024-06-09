# This file is intended to be imported and used only by hydrangea_*.py that
# appropriately setup sys.path for this module
from colorspace import lch2hex, adjust_lch

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
    # H: [0, 2 * PI]
    base_color = dict()
    base_color['gray']    = lch2hex((base_lightness,  7.554, 4.888))
    base_color['red']     = lch2hex((base_lightness, 76.168, 6.100))
    base_color['green']   = lch2hex((base_lightness, 33.038, 1.926))
    base_color['teal']    = lch2hex((base_lightness, 34.680, 3.427))
    base_color['cyan']    = lch2hex((base_lightness, 22.086, 4.135))
    base_color['skyblue'] = lch2hex((base_lightness, 24.056, 4.701))
    base_color['blue']    = lch2hex((base_lightness, 31.778, 4.930))
    base_color['violet']  = lch2hex((base_lightness, 57.453, 5.386))
    base_color['magenta'] = lch2hex((base_lightness, 32.716, 5.769))

    palette = dict()
    for cname in color_names:
        if cname in palette:
            continue
        palette[cname] = {
            -6: (adjust_lch(base_color[cname], -30, 0, 0),  53),
            -5: (adjust_lch(base_color[cname], -28, 0, 0),  53),
            -4: (adjust_lch(base_color[cname], -24, 0, 0),  53),
            -3: (adjust_lch(base_color[cname], -20, 0, 0),  53),
            -2: (adjust_lch(base_color[cname], -16, 0, 0), 133),
            -1: (adjust_lch(base_color[cname],  -8, 0, 0), 133),
            0:  (adjust_lch(base_color[cname],   0, 0, 0), 133),
            +1: (adjust_lch(base_color[cname],   8, 0, 0), 133),
            +2: (adjust_lch(base_color[cname],  16, 0, 0), 225),
            +3: (adjust_lch(base_color[cname],  24, 0, 0), 225),
            +4: (adjust_lch(base_color[cname],  32, 0, 0), 225),
            +5: (adjust_lch(base_color[cname],  40, 0, 0), 225),
            +6: (adjust_lch(base_color[cname],  48, 0, 0), 225),
        }

    return palette
