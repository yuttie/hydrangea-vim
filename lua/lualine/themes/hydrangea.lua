-- Palette (LCH values were measured in GIMP 2.10.4)
local base03    = '#171c26'  -- L = 10, C =  8, H = 270
local base02    = '#232833'  -- L = 16, C =  8, H = 270
local base01    = '#303540'  -- L = 22, C =  8, H = 270
local base00    = '#4b505d'  -- L = 28, C =  8, H = 270
local base0     = '#465166'  -- L = 34, C = 14, H = 270
local base1     = '#8791a9'  -- L = 60, C = 14, H = 270
local base2     = '#cdd8f1'  -- L = 86, C = 14, H = 270
local red01     = '#681c36'  -- L = ?, C = ?, H = ?
local red1      = '#e91e63'  -- L = ?, C = ?, H = ?
local green1    = '#98bf00'  -- L = ?, C = ?, H = ?
local teal01    = '#013435'  -- L = ?, C = ?, H = ?
local teal2     = '#019c9c'  -- L = ?, C = ?, H = ?
local cyan01    = '#023342'  -- L = 19, C = 18, H = 232
local cyan1     = '#1398bf'  -- L = 58, C = 38, H = 232
local cyan3     = '#9bdffc'  -- L = 85, C = 27, H = 232
local blue1     = '#3a69bf'  -- L = ?, C = ?, H = ?
local blue2     = '#8baafe'  -- L = ?, C = ?, H = ?
local blue3     = '#c9d4fd'  -- L = ?, C = ?, H = ?
local violet1   = '#996ddb'  -- L = ?, C = ?, H = ?
local violet2   = '#c398fe'  -- L = ?, C = ?, H = ?
local violet3   = '#e2ccfe'  -- L = ?, C = ?, H = ?
local magenta01 = '#491f38'  -- L = 19, C = 30, H = 343
local magenta1  = '#c44597'  -- L = 50, C = 60, H = 343
local magenta3  = '#ffc3e4'  -- L = 85, C = 27, H = 343

return {
  normal = {
    a = { fg = base03, bg = base2, gui = 'bold' },
    b = { fg = base03, bg = base1 },
    c = { fg = base03, bg = base0 },
  },
  insert = {
    a = { fg = base03, bg = cyan1, gui = 'bold' },
    b = { fg = base03, bg = base1 },
  },
  visual = {
    a = { fg = base03, bg = green1, gui = 'bold' },
    b = { fg = base03, bg = base1 },
  },
  replace = {
    a = { fg = base03, bg = violet1, gui = 'bold' },
    b = { fg = base03, bg = base1 },
  },
  inactive = {
    a = { fg = base03, bg = base1, gui = 'bold' },
    b = { fg = base03, bg = base1 },
    c = { fg = base03, bg = base0 },
  },
}
