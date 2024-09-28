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
    base_color['gray']        = oklch2hex((base_lightness,  7.554, 360 * 4.888 / 2 * pi))
    base_color['red']         = oklch2hex((base_lightness, 76.168, 360 * 6.100 / 2 * pi))
    base_color['yellowgreen'] = oklch2hex((base_lightness, 33.038, 360 * 1.972 / 2 * pi))
    base_color['green']       = oklch2hex((base_lightness, 33.038, 360 * 2.269 / 2 * pi))
    base_color['teal']        = oklch2hex((base_lightness, 34.680, 360 * 3.427 / 2 * pi))
    base_color['cyan']        = oklch2hex((base_lightness, 22.086, 360 * 4.135 / 2 * pi))
    base_color['skyblue']     = oklch2hex((base_lightness, 24.056, 360 * 4.701 / 2 * pi))
    base_color['blue']        = oklch2hex((base_lightness, 31.778, 360 * 4.930 / 2 * pi))
    base_color['violet']      = oklch2hex((base_lightness, 57.453, 360 * 5.386 / 2 * pi))
    base_color['magenta']     = oklch2hex((base_lightness, 32.716, 360 * 5.769 / 2 * pi))

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
