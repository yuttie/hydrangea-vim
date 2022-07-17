# Hydrangea theme

This repository includes a color scheme file for Vim.

![Screenshot](https://raw.githubusercontent.com/yuttie/hydrangea-vim/gh-pages/screenshot.png)


## Features

* A dark theme with main colors from hydrangea flowers
* Midnight blue as the background color
* Support 256 color terminals
* Includes colorscheme file for [lightline.vim](https://github.com/itchyny/lightline.vim)
* Customization via colorscheme [generator script](src/hydrangea.py) written in Python


## Installation

### For vim-plug users
```viml
Plug 'yuttie/hydrangea-vim'
```

### For dein.vim users
```viml
call dein#add('yuttie/hydrangea-vim')
```

## Configuration

### bufferline.nvim

This colorscheme provides a set of highlight groups for overriding default ones defined by bufferline.nvim. 
However, it is impossible to provide one-size-fits-all highlight definitions that can be used with any kinds of separators.
Therefore, the current one is designed specifically for the following configuration:

```lua
require('bufferline').setup {
  options = {
    mode = 'tabs',
    themable = true,
    separator_style = { '|', '|' },
    ...
  },
  ...
}
```

Please note that you have to set `themable` to `true` to apply the colorscheme-defined appearance.


### nvim-cmp
[nvim-cmp](https://github.com/hrsh7th/nvim-cmp) support is provided.

Recommended configuration:

```lua
local cmp = require('cmp')

local cmp_window_config = {
  winhighlight = 'Normal:Pmenu,FloatBorder:Pmenu,CursorLine:PmenuSel,Search:None',
  ...
}

cmp.setup({
  ...
  window = {
    completion = cmp.config.window.bordered(cmp_window_config),
    documentation = cmp.config.window.bordered(cmp_window_config),
  },
  ...
})
```


### lightline.vim
[lightline.vim](https://github.com/itchyny/lightline.vim) support is included.
To use the bundled colorscheme for lightline.vim, specify `'hydrangea'` in a definition of your lightline as follows:
```viml
let g:lightline = {
      \ 'colorscheme': 'hydrangea',
      \ 'component': {
      \   'readonly': '%{&readonly?"":""}',
      \ },
      \ 'separator':    { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' },
      \ }
```


## Contribution
Currently, the colors for terminals, i.e. `cterm*` values, are not tested well.
Please create an issue when you find a problem.


## See also
If you are also interested in a light theme, have a look at my [Inkstained theme](https://github.com/yuttie/inkstained-vim)! 😎
