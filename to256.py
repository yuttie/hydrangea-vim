#!/usr/bin/python
"""to256.py

Usage:
  to256.py pick <color>... [--metric=<name>] [--format=<type>...] [--top=<number>] [--grayscale | --chromatic] [--show-input]
  to256.py benchmark [--samples=<number>]
  to256.py (-h | --help)

Options:
  --metric=<name>           Metric to measure similarities among colors [default: euclidean/rgb].
  --format=<type>           Types of output representation of picked colors [default: code hex].
  --top=<number>            Output top-<number> similar colors [default: 1].
  --grayscale, --chromatic  Include only grayscale/chromatic colors.
  -n, --samples=<number>    Number of color samples [default: 100].
  -h, --help                Show this message.
"""
from docopt    import docopt
from bisect    import insort
from itertools import islice
from math      import sqrt
from random    import randint
import sys

# ANSI colors
ANSI_COLORS = [(0x00, 0x00, 0x00),
               (0x80, 0x00, 0x00),
               (0x00, 0x80, 0x00),
               (0x80, 0x80, 0x00),
               (0x00, 0x00, 0x80),
               (0x80, 0x00, 0x80),
               (0x00, 0x80, 0x80),
               (0xc0, 0xc0, 0xc0),
               (0x80, 0x80, 0x80),
               (0xff, 0x00, 0x00),
               (0x00, 0xff, 0x00),
               (0xff, 0xff, 0x00),
               (0x00, 0x00, 0xff),
               (0xff, 0x00, 0xff),
               (0x00, 0xff, 0xff),
               (0xff, 0xff, 0xff)]

# xterm's 256 colors
CUBE_INTENSITIES = [0x00, 0x5f, 0x87, 0xaf, 0xd7, 0xff]


def index2xtermrgb(i):
    if i < 16:
        return ANSI_COLORS[i]
    elif i < 232:
        tmp, b = divmod(i - 16, 6)
        tmp, g = divmod(tmp, 6)
        tmp, r = divmod(tmp, 6)
        r = CUBE_INTENSITIES[r]
        g = CUBE_INTENSITIES[g]
        b = CUBE_INTENSITIES[b]
        return (r, g, b)
    else:
        v = 10 * (i - 232) + 8
        return (v, v, v)

XTERM_COLORS = [index2xtermrgb(i) for i in range(256)]


# Conversion
def rgb2xyz(color):
    def srgb2linear(c):
        a = 0.055
        return c / 12.92 if c <= 0.04045 else ((c + a) / (1 + a))**2.4
    r, g, b = color
    r = r / 0xff
    g = g / 0xff
    b = b / 0xff
    r_lin = srgb2linear(r)
    g_lin = srgb2linear(g)
    b_lin = srgb2linear(b)
    x = 0.4124 * r_lin + 0.3576 * g_lin + 0.1805 * b_lin
    y = 0.2126 * r_lin + 0.7152 * g_lin + 0.0722 * b_lin
    z = 0.0193 * r_lin + 0.1192 * g_lin + 0.9505 * b_lin
    return (x, y, z)


def xyz2lab(color):
    def f(t):
        return t**(1/3) if t > (6/29)**3 else (29/6)**2 * t / 3 + 4/29
    x_n = 0.95047
    y_n = 1.00000
    z_n = 1.08883
    x, y, z = color
    l = 116 * f(y / y_n) - 16
    a = 500 * (f(x / x_n) - f(y / y_n))
    b = 200 * (f(y / y_n) - f(z / z_n))
    return (l, a, b)


# Euclidean distance
def euclidean(color1, color2):
    r1, g1, b1 = color1
    r2, g2, b2 = color2
    return sqrt((r2 - r1)**2 + (g2 - g1)**2 + (b2 - b1)**2)


# Delta E based on the CIE94 algorithm
# https://en.wikipedia.org/wiki/Color_difference#CIE94
def delta_e(color1, color2):
    l1, a1, b1 = color1
    l2, a2, b2 = color2
    d_l = l1 - l2
    c1 = sqrt(a1**2 + b1**2)
    c2 = sqrt(a2**2 + b2**2)
    d_c = c1 - c2
    d_a = a1 - a2
    d_b = b1 - b2
    d_h2 = d_a**2 + d_b**2 - d_c**2
    d_h = 0 if d_h2 < 0 else sqrt(d_h2)
    k_l = 1
    k_c = 1
    k_h = 1
    k1 = 0.045
    k2 = 0.015
    s_l = 1
    s_c = 1 + k1 * c1
    s_h = 1 + k2 * c1
    d_e2 = (d_l / (k_l * s_l))**2 + (d_c / (k_c * s_c))**2 + (d_h / (k_h * s_h))**2
    d_e = 0 if d_e2 < 0 else sqrt(d_e2)
    return d_e


# Approximation
def approx(color, palette, metric):
    ranking = []
    for i, c in enumerate(palette):
        d = metric(color, c)
        insort(ranking, (d, i))
    return ranking


# Grayscale / Chromatic
def is_grayscale(color):
    return color[0] == color[1] == color[2]


# Render xterm colors into a string
def render_xterm_color(i, fmt):
    if fmt == 'code':
        return '{:d}'.format(i)
    elif fmt == 'hex':
        return '#{:02x}{:02x}{:02x}'.format(*XTERM_COLORS[i])
    elif fmt == 'HEX':
        return '#{:02X}{:02X}{:02X}'.format(*XTERM_COLORS[i])
    else:
        raise


# main
args = docopt(__doc__)

if args['pick']:
    name, space = args['--metric'].split('/')
    if name == 'euclidean' and space == 'rgb':
        metric = euclidean
        palette = XTERM_COLORS
    elif name == 'euclidean' and space == 'lab':
        metric = euclidean
        palette = list(map(lambda c: xyz2lab(rgb2xyz(c)), XTERM_COLORS))
    elif name == 'delta-e' and space == 'lab':
        metric = delta_e
        palette = list(map(lambda c: xyz2lab(rgb2xyz(c)), XTERM_COLORS))
    else:
        raise
    for color in args['<color>']:
        if color[0] == '#':
            hex = color[1:]
            rgb = (int(hex[0:2], 16), int(hex[2:4], 16), int(hex[4:6], 16))
        else:
            raise
        if space == 'rgb':
            ranking = approx(rgb, palette, metric)
        elif space == 'lab':
            lab = xyz2lab(rgb2xyz(rgb))
            ranking = approx(lab, palette, metric)
        else:
            raise
        indices = map(lambda x: x[1], ranking)
        if args['--grayscale']:
            indices = filter(lambda i:     is_grayscale(XTERM_COLORS[i]), indices)
        elif args['--chromatic']:
            indices = filter(lambda i: not is_grayscale(XTERM_COLORS[i]), indices)
        else:
            pass
        indices = islice(indices, 0, int(args['--top']))
        if args['--show-input']:
            print('{}:\t'.format(color), end='')
        rendered = ('/'.join((render_xterm_color(i, fmt) for fmt in args['--format'])) for i in indices)
        print('\t'.join(rendered))

if args['benchmark']:
    print('''<!doctype html>
    <head>
      <style>
        * {
          margin: 0;
          padding: 0;
        }
        body {
          width: 86em;
          margin: 0 auto;
        }
        .g {
          display: flex;
          flex-direction: column;
          float: left;
          width: 8em;
          height: 8em;
          margin: 0.3em;
        }
        .sg {
          display: flex;
          flex-direction: row;
          flex: auto;
        }
        .r {
          flex: auto;
        }
        .c {
          flex: auto;
        }
      </style>
    </head>
    ''')
    XTERM_COLORS_LAB = list(map(lambda c: xyz2lab(rgb2xyz(c)), XTERM_COLORS))
    count = 0
    while count < int(args['--samples']):
        rgb = (randint(0x00, 0xff), randint(0x00, 0xff), randint(0x00, 0xff))
        lab = xyz2lab(rgb2xyz(rgb))
        i_euclidean_rgb = approx(rgb, XTERM_COLORS,     euclidean)
        i_euclidean_lab = approx(lab, XTERM_COLORS_LAB, euclidean)
        i_deltae_lab    = approx(lab, XTERM_COLORS_LAB, delta_e)
        if i_euclidean_rgb != i_euclidean_lab or i_euclidean_rgb != i_deltae_lab:
            print('<div class="g">')
            print('  <div class="r" style="background:#{:02x}{:02x}{:02x};"></div>'.format(*rgb))
            print('  <div class="sg">')
            print('    <div class="c" style="background:#{:02x}{:02x}{:02x};"></div>'.format(*XTERM_COLORS[i_euclidean_rgb]))
            print('    <div class="c" style="background:#{:02x}{:02x}{:02x};"></div>'.format(*XTERM_COLORS[i_euclidean_lab]))
            print('    <div class="c" style="background:#{:02x}{:02x}{:02x};"></div>'.format(*XTERM_COLORS[i_deltae_lab]))
            print('  </div>')
            print('</div>')
            count = count + 1
            sys.stderr.write("\r{:d}".format(count))
    sys.stderr.write("\rDone!\n")
