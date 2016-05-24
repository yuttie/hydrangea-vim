# Hydrangea theme

This repository includes
["Custom theme"](https://www.gnu.org/software/emacs/manual/html_node/emacs/Custom-Themes.html)
for Emacs 24 or above,
a color scheme file for Vim,
and an Xresources file for terminals.


## Screenshots
## Emacs
![Screenshot of Emacs](https://raw.githubusercontent.com/yuttie/hydrangea-theme/gh-pages/screenshot-elisp.png)
## Vim
![Screenshot of Vim](https://raw.githubusercontent.com/yuttie/hydrangea-theme/gh-pages/screenshot-viml.png)


## Features

* A dark theme with main colors from hydrangea flowers
* Midnight blue as the background color
* Support 256 color terminals
* Emacs: The theme comes with a minor mode for adjusting its [HSL components](https://en.wikipedia.org/wiki/HSL_and_HSV) on-the-fly
* Emacs: You can make the adjustment persistent through custom variables
* Vim: Includes colorscheme file for [lightline.vim](https://github.com/itchyny/lightline.vim)


## Installation

### Emacs

##### For El-Get users

You can define a local recipe and call `el-get`:

```elisp
;; Add a local recipe for hydrangea-theme
(add-to-list 'el-get-sources
             '(:name hydrangea-theme
                     :description "Theme building framework for Emacs"
                     :website "https://github.com/yuttie/hydrangea-theme"
                     :type github
                     :pkgname "yuttie/hydrangea-theme"
                     :autoloads "hydrangea-autoloads"
                     :build `((,el-get-emacs "-batch" "--quick" "--eval"
                                             "(let ((generated-autoload-file (expand-file-name \"hydrangea-autoloads.el\" \".\")) (backup-inhibited t)) (update-directory-autoloads \".\"))"))))
;; Let el-get install it!
(el-get 'sync '(... hydrangea-theme ...))
```

, or use `el-get-bundle` macro:
```elisp
(el-get-bundle yuttie/hydrangea-theme
  :autoloads "hydrangea-autoloads"
  :build `((,el-get-emacs "-batch" "--quick" "--eval"
                          "(let ((generated-autoload-file (expand-file-name \"hydrangea-autoloads.el\" \".\")) (backup-inhibited t)) (update-directory-autoloads \".\"))")))
```

### Vim

##### For vim-plug users
```viml
Plug 'yuttie/hydrangea-theme'
```


## Configuration

### Vim

#### lightline.vim
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
