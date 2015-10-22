# Hydrangea: a theme and a theme framework for Emacs

This is a ["Custom theme"](https://www.gnu.org/software/emacs/manual/html_node/emacs/Custom-Themes.html)
for Emacs 24 or above.

![Screenshot of Emacs Lisp](https://raw.githubusercontent.com/yuttie/hydrangea-theme/gh-pages/screenshot-elisp.png)


## Features

* A dark theme with main colors from hydrangea flowers
* Midnight blue is used as the background color
* The theme comes with a minor mode for adjusting its [HSL components](https://en.wikipedia.org/wiki/HSL_and_HSV) on-the-fly
* You can make the adjustment persistent through custom variables
* Also an Xresources file is included which provides colors based on the palette


## Installation

### For El-get users

You can define a local recipe and call `el-get`:

```elisp
;; Add a local recipe for hydrangea-theme
(add-to-list 'el-get-sources
             '(:name hydrangea-theme
                     :description "Theme building framework for Emacs"
                     :website "https://github.com/yuttie/hydrangea-theme"
                     :type github
                     :pkgname "yuttie/hydrangea-theme"
                     :post-init (add-to-list 'custom-theme-load-path default-directory)))
;; Let el-get install it!
(el-get 'sync '(... hydrangea-theme ...))
```

, or use `el-get-bundle` macro:
```elisp
(el-get-bundle yuttie/hydrangea-theme
  :post-init (add-to-list 'custom-theme-load-path default-directory))
```


## TODO

* [ ] Add screenshots
