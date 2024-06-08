from skimage.color import rgb2lab, lab2lch, lch2lab, lab2rgb

def hex2rgb(hex: str) -> tuple[float, float, float]:
    if hex[0] != '#':
        raise ValueError('Arg hex must start with "#"')
    r = int(hex[1:3], 16) / 0xff
    g = int(hex[3:5], 16) / 0xff
    b = int(hex[5:7], 16) / 0xff
    return (r, g, b)

def rgb2hex(rgb: tuple[float, float, float]) -> str:
    r, g, b = map(lambda x: int(0xff * x), rgb)
    return f'#{r:02x}{g:02x}{b:02x}'

def hex2lch(hex: str) -> tuple[float, float, float]:
    return tuple(lab2lch(rgb2lab(hex2rgb(hex), illuminant='D65')))

def lch2hex(lch: tuple[float, float, float]) -> str:
    return rgb2hex(lab2rgb(lch2lab(lch), illuminant='D65'))

def adjust_lch(hex: str, delta_l: float, delta_c: float, delta_h: float) -> str:
    l, c, h = hex2lch(hex)
    return lch2hex((l + delta_l, c + delta_c, h + delta_h))
