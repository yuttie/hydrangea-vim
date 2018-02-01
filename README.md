# Hydrangea theme

This repository includes a color scheme file for Vim.

![Screenshot](https://raw.githubusercontent.com/yuttie/hydrangea-vim/gh-pages/screenshot.png)
![Screenshot for Rust](https://raw.githubusercontent.com/yuttie/hydrangea-vim/gh-pages/screenshot-rust.png)


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
