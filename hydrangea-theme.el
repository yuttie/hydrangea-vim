;;; hydrangea-theme.el --- A hydrangea theme for Emacs  -*- lexical-binding: t -*-

;; Copyright (C) 2015-2016  Yuta Taniguchi

;; Author: Yuta Taniguchi <yuta.taniguchi.y.t@gmail.com>
;; Keywords: theme, dark
;; Version: 3.0.0

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; 

;;; Code:

(eval-when-compile
  (require 'hydrangea)

  (defmacro hydrangea-theme-palette ()
    ;; name          24bit-color 8bit-color
    '((base03        "#1c1f26"   "#1c1c1c")
      (base02        "#2b303b"   "#303030")
      (base01        "#333946"   "#3a3a3a")
      (base00        "#3c4453"   "#444444")
      (base0         "#565f72"   "#5f5f5f")
      (base1         "#626c82"   "#6c6c6c")
      (base2         "#c1d0e3"   "#d0d0d0")
      (base3         "#dfedff"   "#eeeeee")
      (red           "#e91e63"   "#ff005f")
      (aqua          "#36c399"   "#00d7af")
      (aqua-dark     "#114335"   "#3a3a3a")
      (cyan          "#1cc7de"   "#00d7ff")
      (blue          "#6d88ff"   "#5f87ff")
      (blue-dark     "#243166"   "#303030")
      (violet        "#b490ff"   "#af87ff")
      (magenta       "#e242ac"   "#d75faf")
      (magenta-light "#e481ce"   "#d787d7")
      (emacs         "#5955a9"   "#5f5faf")
      (diff-add-fg   "#00bbff"   "#00afff")
      (diff-add-bg   "#0d4a60"   "#444444")
      (diff-add-hi   "#97e3ff"   "#87d7ff")
      (diff-rm-fg    "#e246ae"   "#d75faf")
      (diff-rm-bg    "#66184c"   "#87005f")
      (diff-rm-hi    "#fface3"   "#ffafd7")))

  (defmacro hydrangea-theme-face-definitions ()
    '(;; Standard
      (default        :background base02 :foreground base2)
      (fixed-pitch    :family "monospace\n")
      (variable-pitch :family "sans serif")
      (shadow         :foreground base00)
      ;; Frame
      (cursor              :background base3)
      (fringe              :background base01 :foreground base0 :box nil :inverse-video nil)
      (menu                :background base02 :foreground base2          :inverse-video nil)
      (tooltip             :background base01 :foreground base2)
      (linum               :inherit (fringe) :weight normal)
      (minibuffer-prompt   :foreground base2)
      (vertical-border     :foreground base03)
      (window-divider      :foreground base03)
      (window-divider-first-pixel :inherit (window-divider))
      (window-divider-last-pixel  :inherit (window-divider))
      (mode-line           :background base0  :foreground base3 :box nil)
      (mode-line-inactive  :background base00 :foreground base1 :box nil)
      ;; powerline
      (powerline-active1   :background base00 :foreground base2)
      (powerline-active2   :background base00 :foreground base2)
      (powerline-inactive1 :background base01 :foreground base1)
      (powerline-inactive2 :background base01 :foreground base1)
      ;; hlinum
      (linum-highlight-face :inherit (linum) :foreground base3 :background base0 :weight bold)
      ;; Highlight
      (link                :foreground blue)
      (highlight           :background base01 :foreground unspecified)
      (hl-line             :background base03)
      (isearch             :background magenta :foreground base3)
      (query-replace       :inherit (isearch))
      (lazy-highlight      :background nil :inherit (isearch))
      (region              :background magenta-light :foreground base3)
      (secondary-selection :background base02)
      (trailing-whitespace :background red)
      (escape-glyph        :foreground cyan)
      ;; whitespace
      (whitespace-space :background unspecified :foreground base00)
      (whitespace-line :inherit (highlight))
      ;; Spacemacs
      (spacemacs-normal-face  :background base2)
      (spacemacs-insert-face  :background cyan)
      (spacemacs-visual-face  :background magenta-light)
      (spacemacs-replace-face :background red)
      (spacemacs-emacs-face   :background emacs)
      ;; Main
      (font-lock-builtin-face :foreground cyan)
      (font-lock-comment-delimiter-face    :inherit (font-lock-comment-face))
      (font-lock-comment-face              :foreground base0)
      (font-lock-constant-face             :foreground blue :background blue-dark)
      (font-lock-doc-face                  :slant italic :inherit (shadow))
      (font-lock-function-name-face        :foreground base3 :weight bold)
      (font-lock-keyword-face              :foreground cyan :weight bold)
      (font-lock-negation-char-face        :foreground blue)
      (font-lock-preprocessor-face         :foreground magenta-light)
      (font-lock-regexp-grouping-backslash :weight bold)
      (font-lock-regexp-grouping-construct :weight bold)
      (font-lock-string-face               :foreground aqua :background aqua-dark)
      (font-lock-type-face                 :foreground magenta)
      (font-lock-variable-name-face        :foreground violet)
      (font-lock-warning-face              :background red :foreground (darken 40 red))
      ;; completions
      (completions-common-part      :foreground violet :weight bold)
      (completions-first-difference :foreground blue)
      ;; show-paren-mode
      (show-paren-match :background unspecified :foreground "#ff0000" :weight bold)
      ;; auto-complete
      (ac-completion-face :inherit (shadow) :foreground base3 :underline unspecified)
      (ac-candidate-face  :inherit(default) :background base02)
      (ac-selection-face  :inherit (ac-candidate-face) :background base01 :foreground base3 :weight bold)
      ;; avy
      (avy-lead-face   :foreground base02 :background cyan)
      (avy-lead-face-0 :foreground base02 :background cyan)
      (avy-lead-face-2 :foreground base02 :background cyan)
      ;; ace-window
      (aw-leading-char-face :inherit (default) :foreground cyan :height 4.0)
      (aw-background-face   :inherit (default) :foreground base02)
      ;; company-mode
      (company-tooltip                  :inherit (default) :foreground base2 :background base01)
      (company-tooltip-selection        :inherit (company-tooltip) :background base00 :foreground base3 :weight bold)
      (company-tooltip-search           :inherit (isearch))
      (company-tooltip-mouse            :inherit (company-tooltip-selection))
      (company-tooltip-common           :inherit (company-tooltip) :foreground cyan :weight bold)
      (company-tooltip-common-selection :inherit (company-tooltip-selection) :foreground cyan)
      (company-tooltip-annotation       :inherit (company-tooltip) :foreground blue)
      (company-scrollbar-fg             :background base0)
      (company-scrollbar-bg             :inherit (company-tooltip))
      (company-preview                  :foreground base2 )
      (company-preview-common           :foreground cyan)
      (company-preview-search           :inherit (isearch))
      (company-echo                     )
      (company-echo-common              :inherit (company-echo) :foreground cyan :weight bold)
      ;; diff-mode
      (diff-header         :background base02 :foreground violet :weight bold)
      (diff-file-header    :weight bold :inherit (diff-header))
      (diff-index          :inherit (diff-file-header))
      (diff-hunk-header    :inherit (diff-header) :foreground red)
      (diff-removed        :foreground diff-rm-fg  :background diff-rm-bg)
      (diff-added          :foreground diff-add-fg :background diff-add-bg)
      (diff-changed        )
      (diff-function       :foreground red :background base02 :inherit (diff-header))
      (diff-context        :foreground base00)
      (diff-nonexistent    :inherit (diff-file-header))
      (diff-refine-removed :foreground diff-rm-hi  :weight bold)
      (diff-refine-added   :foreground diff-add-hi :weight bold)
      (diff-refine-change  :inherit (diff-refine-added))
      ;; Magit
      (magit-section-highlight :inherit (highlight))
      (magit-diff-context-highlight :inherit (highlight))
      (magit-diff-removed :inherit (diff-removed))
      (magit-diff-added   :inherit (diff-added))
      (magit-diff-removed-highlight :inherit (magit-diff-removed))
      (magit-diff-added-highlight :inherit (magit-diff-added))
      ;; markdown-mode
      (markdown-list-face             :foreground violet)
      (markdown-header-delimiter-face :foreground magenta)
      (markdown-pre-face              :background base01)
      ;; Minimap
      (minimap-active-region-background :inherit (highlight))
      ;; Ediff
      (ediff-current-diff-A :inherit (diff-removed) :background unspecified :foreground unspecified :weight bold)
      (ediff-current-diff-B :inherit (diff-added)   :background unspecified :foreground unspecified :weight bold)
      (ediff-current-diff-C                         :background base2       :foreground unspecified :weight bold)
      (ediff-odd-diff-A     :inherit (diff-removed) :background unspecified :foreground unspecified)
      (ediff-odd-diff-B     :inherit (diff-added)   :background unspecified :foreground unspecified)
      (ediff-odd-diff-C                             :background base2       :foreground unspecified)
      (ediff-even-diff-A    :inherit (diff-removed) :background unspecified :foreground unspecified)
      (ediff-even-diff-B    :inherit (diff-added)   :background unspecified :foreground unspecified)
      (ediff-even-diff-C                            :background base2       :foreground unspecified)
      (ediff-fine-diff-A    :inherit (diff-refine-removed)                  :foreground unspecified)
      (ediff-fine-diff-B    :inherit (diff-refine-added)                    :foreground unspecified)
      (ediff-fine-diff-C                            :background base2       :foreground unspecified)
      ;; git-gutter-plus
      (git-gutter+-modified :foreground magenta)
      (git-gutter+-added    :foreground diff-add-fg)
      (git-gutter+-deleted  :foreground diff-rm-fg)
      ;; Helm
      (helm-source-header    :background unspecified :foreground blue :height 1.414 :weight bold)
      (helm-header           :background violet      :foreground base02 :height 1.414)
      (helm-candidate-number :background unspecified :foreground base1)
      (helm-selection        :background base01      :foreground base3 :weight bold :underline nil)
      (helm-match            :foreground cyan :weight bold)
      ;; highlight-symbol
      (highlight-symbol-face :background unspecified :underline t)
      ;; ElScreen
      (elscreen-tab-background-face     :inherit (variable-pitch) :background base01 :foreground base2 :underline nil :height 1.4 :box (:line-width 8 :color base01))
      (elscreen-tab-control-face        :background base01 :foreground base2 :underline nil)
      (elscreen-tab-current-screen-face :inherit (elscreen-tab-background-face) :foreground base3 :height 1.0 :background unspecified :weight bold :underline (saturate 80 cyan))
      (elscreen-tab-other-screen-face   :inherit (elscreen-tab-background-face) :foreground base0 :height 1.0)
      ;; Shell
      (comint-highlight-prompt :foreground blue  :weight bold)
      (comint-highlight-input  :foreground base2 :weight bold)
      ;; DDSKK
      (skk-henkan-face :background unspecified :foreground base2)
      (skk-jisyo-registration-badge-face :background magenta :foreground base3)
      (skk-inline-show-face :inherit (default))
      (skk-verbose-intention-face :inherit (shadow))
      (skk-dcomp-face :foreground base2)
      (skk-dcomp-multiple-face  :background base01 :foreground cyan)
      (skk-dcomp-multiple-trailing-face :inherit (skk-dcomp-multiple-face) :foreground base0)
      (skk-dcomp-multiple-selected-face :inherit (skk-dcomp-multiple-face) :foreground base3 :weight bold))))

(hydrangea-define-theme hydrangea
  (hydrangea-theme-palette)
  (hydrangea-theme-face-definitions)
  "A hydrangea theme for Emacs"
  ;; Force the appearance of tooltip specified by this theme
  (setq x-gtk-use-system-tooltips nil)
  ;; pos-tip.el
  (setq pos-tip-background-color (nth 1 (assq 'base01 palette))
        pos-tip-foreground-color (nth 1 (assq 'base2  palette)))
  ;; highlight-parentheses
  (setq hl-paren-colors
        `(,(color-darken-name (nth 1 (assq 'blue palette))  0)
          ,(color-darken-name (nth 1 (assq 'blue palette))  4)
          ,(color-darken-name (nth 1 (assq 'blue palette))  8)
          ,(color-darken-name (nth 1 (assq 'blue palette)) 12)
          ,(color-darken-name (nth 1 (assq 'blue palette)) 16)))
  ;; DDSKK
  (defface skk-henkan-face nil "*変換候補の face 属性。")
  (setq skk-henkan-face 'skk-henkan-face)
  (defface skk-inline-show-face nil "")
  (setq skk-inline-show-face 'skk-inline-show-face)
  (setq skk-inline-show-background-color (nth 1 (assq 'base01 palette)))
  (setq skk-inline-show-background-color-odd (color-lighten-name (nth 1 (assq 'base01 palette)) 5)))

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory
                (file-name-directory load-file-name))))

;; Local Variables:
;; eval: (add-to-list 'custom-theme-load-path (file-name-directory (buffer-file-name)))
;; eval: (add-to-list 'load-path (file-name-directory (buffer-file-name)))
;; eval: (rainbow-mode)
;; End:

;;; hydrangea-theme.el ends here
