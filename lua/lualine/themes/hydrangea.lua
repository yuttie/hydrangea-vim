-- Palette
local base03    = '#1b202a'
local base02    = '#232833'
local base01    = '#303540'
local base00    = '#4b505d'
local base0     = '#465166'
local base1     = '#96a1b9'
local base2     = '#d3def7'
local red01     = '#681c36'
local red1      = '#e91e63'
local green1    = '#98bf00'
local green3    = '#dafd89'
local teal01    = '#013435'
local teal2     = '#019c9c'
local cyan01    = '#023342'
local cyan1     = '#0990b5'
local cyan3     = '#9bdffc'
local skyblue01 = '#002844'
local skyblue1  = '#0487d8'
local skyblue3  = '#73c5ff'
local blue1     = '#466bb6'
local blue2     = '#6d88ce'
local violet01  = '#35264a'
local violet0   = '#5b4182'
local violet1   = '#996ddb'
local violet2   = '#c398fe'
local violet3   = '#e2ccfe'
local magenta01 = '#4a1d45'
local magenta1  = '#a6549c'
local magenta3  = '#f7c5ef'

return {
  normal = {
    a = { fg = base03, bg = skyblue1, gui = 'bold' },
    b = { fg = base1, bg = base01 },
    c = { fg = base1, bg = base02 },
  },
  insert = {
    a = { fg = base03, bg = cyan1, gui = 'bold' },
  },
  visual = {
    a = { fg = base03, bg = green1, gui = 'bold' },
  },
  replace = {
    a = { fg = base03, bg = magenta1, gui = 'bold' },
  },
  inactive = {
    a = { fg = base03, bg = base1, gui = 'bold' },
  },
}
