import colour
import numpy as np

def hex2rgb(hex: str) -> np.ndarray:
    if hex[0] != '#':
        raise ValueError('Arg hex must start with "#"')
    r = int(hex[1:3], 16) / 0xff
    g = int(hex[3:5], 16) / 0xff
    b = int(hex[5:7], 16) / 0xff
    return np.array([r, g, b], dtype=np.float64)

def rgb2hex(rgb: np.ndarray) -> str:
    r, g, b = map(lambda x: int(0xff * min(max(x, 0), 1)), rgb)
    return f'#{r:02x}{g:02x}{b:02x}'

def hex2oklab(hex: str) -> np.ndarray:
    rgb = hex2rgb(hex)  # rgb: [0, 1], [0, 1], [0, 1]
    xyz = colour.sRGB_to_XYZ(rgb)  # xyz: [0, 1], [0, 1], [0, 1]
    oklab = colour.XYZ_to_Oklab(xyz)  # oklab: [0, 1], [-1, 1], [-1, 1]
    return oklab

def oklab2hex(oklab: np.ndarray) -> str:  # oklab: [0, 1], [-1, 1], [-1, 1]
    xyz = colour.Oklab_to_XYZ(oklab)  # xyz: [0, 1], [0, 1], [0, 1]
    rgb = colour.XYZ_to_sRGB(xyz)  # rgb: [0, 1], [0, 1], [0, 1]
    hex = rgb2hex(rgb)
    return hex

def hex2oklch(hex: str) -> np.ndarray:
    oklab = hex2oklab(hex)  # oklab: [0, 1], [-1, 1], [-1, 1]
    oklch = colour.models.Jab_to_JCh(100 * oklab)  # oklch: [0, 100], [0, 100], [0, 360]
    return oklch

def oklch2hex(oklch: np.ndarray) -> str:  # oklch: [0, 100], [0, 100], [0, 360]
    oklab = colour.models.JCh_to_Jab(oklch) / 100  # oklab: [0, 1], [-1, 1], [-1, 1]
    hex = oklab2hex(oklab)
    return hex

def adjust_lightness(hex: str, delta) -> str:  # delta: [-100, 100]
    oklab = hex2oklab(hex)  # oklab: [0, 1], [-1, 1], [-1, 1]
    oklab[0] += delta / 100
    return oklab2hex(oklab)
