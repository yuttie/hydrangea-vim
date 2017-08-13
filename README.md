# Hydrangea theme

This repository includes a color scheme file for Vim.


## Screenshots
## Vim
![Screenshot](https://raw.githubusercontent.com/yuttie/hydrangea-vim/gh-pages/screenshot-viml.png)


## Features

* A dark theme with main colors from hydrangea flowers
* Midnight blue as the background color
* Support 256 color terminals
* Includes colorscheme file for [lightline.vim](https://github.com/itchyny/lightline.vim)


## Installation

### For vim-plug users
```viml
Plug 'yuttie/hydrangea-theme'
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
