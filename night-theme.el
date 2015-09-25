;;; night-theme.el --- A night theme for Emacs  -*- lexical-binding: t -*-

;; Copyright (C) 2014  Yuta Taniguchi

;; Author: Yuta Taniguchi <yuta.taniguchi.y.t@gmail.com>
;; Keywords: theme
;; Version: 0.2.0

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

(deftheme night
  "A night theme for Emacs")

(require 'color)

(defcustom night-theme-tune-saturation 0
  "Percentage of saturation by which accent colors in the palette will be adjusted.
Both a positive value and a negative value are accepted.
This value will be passed to the `color-saturate-name' function."
  :type 'number
  :group 'night-theme)

(defcustom night-theme-tune-lightness 0
  "Percentage of lightness by which accent colors in the palette will be adjusted.
Both a positive value and a negative value are accepted.
This value will be passed to the `color-lighten-name' function."
  :type 'number
  :group 'night-theme)

(let* (;; Palette
       (base4   "#202026") (base4-256   "#303030")
       (base3   "#303038") (base3-256   "#444444")
       (base2   "#40404a") (base2-256   "#4e4e4e")
       (base1   "#50505b") (base1-256   "#6c6c6c")
       (base0   "#80808d") (base0-256   "#b2b2b2")
       (base-1  "#d0d0de") (base-1-256  "#d0d0d0")
       (base-2  "#f0f0ff") (base-2-256  "#eeeeee")
       (red     (color-lighten-name (color-saturate-name "#e38484" night-theme-tune-saturation) night-theme-tune-lightness)) (red-256     "#d75f5f")
       (orange  (color-lighten-name (color-saturate-name "#dda277" night-theme-tune-saturation) night-theme-tune-lightness)) (orange-256  "#d75f5f")
       (yellow  (color-lighten-name (color-saturate-name "#e7d56d" night-theme-tune-saturation) night-theme-tune-lightness)) (yellow-256  "#dfaf00")
       (green   (color-lighten-name (color-saturate-name "#bdd16e" night-theme-tune-saturation) night-theme-tune-lightness)) (green-256   "#87af00")
       (cyan    (color-lighten-name (color-saturate-name "#8fd7cf" night-theme-tune-saturation) night-theme-tune-lightness)) (cyan-256    "#00afaf")
       (blue    (color-lighten-name (color-saturate-name "#7dc0df" night-theme-tune-saturation) night-theme-tune-lightness)) (blue-256    "#0087ff")
       (violet  (color-lighten-name (color-saturate-name "#a891e7" night-theme-tune-saturation) night-theme-tune-lightness)) (violet-256  "#875fff")
       (magenta (color-lighten-name (color-saturate-name "#d78cc7" night-theme-tune-saturation) night-theme-tune-lightness)) (magenta-256 "#d75faf")
       (emacs   "#5955a9") (emacs-256   "#5955a9")
       (diff-rm  "#6b151e")
       (diff-add "#434d13")
       )
  ;; Set attributes of the default face for existing frames and new frames.
  (set-face-attribute 'default nil :background base4 :foreground base-1)
  (set-face-attribute 'cursor  nil :background blue)
  ;; Custom theme
  (custom-theme-set-faces
   'night
   ;; Standard
   `(default        ((t :background ,base4 :foreground ,base-1)))
   `(fixed-pitch    ((t :family "monospace")))
   `(variable-pitch ((t :family "sans serif")))
   `(shadow         ((t :foreground ,base1)))
   ;; Frame
   `(cursor             ((((class color) (min-colors 257)) :background ,blue)
                         (t                                :background ,blue-256)))
   `(fringe             ((((class color) (min-colors 257)) :background ,base3 :foreground ,base1 :weight bold)
                         (t                                :background ,base3 :foreground ,base1 :weight bold)))
   `(menu               ((t :background ,base3    :foreground ,base-1   :inverse-video nil)))
   `(linum              ((t :inherit (fringe))))
   `(mode-line          ((t :inherit (variable-pitch) :background ,base2 :foreground ,base-1 :box nil)))
   `(mode-line-inactive ((t :inherit (variable-pitch) :background ,base3 :foreground ,base0  :box nil)))
   `(minibuffer-prompt  ((t :foreground ,base-2)))
   ;; hlinum
   `(linum-highlight-face ((t :inherit (linum) :foreground ,base-2)))
   ;; powerline
   `(powerline-mode-normal        ((t :background "#afd700" :foreground "#005f00" :box nil :weight bold)))
   `(powerline-mode-insert        ((t :background "#ffffff" :foreground "#005f5f" :box nil :weight bold)))
   `(powerline-mode-visual        ((t :background "#ffaf00" :foreground "#875f00" :box nil :weight bold)))
   `(powerline-mode-replace       ((t :background "#d70000" :foreground "#ffffff" :box nil :weight bold)))
   `(powerline-mode-operator      ((t :background "#d70000" :foreground "#ffffff" :box nil :weight bold)))
   `(powerline-mode-emacs         ((t :background ,emacs                        :foreground ,(color-lighten-name emacs 40) :box nil :weight bold)))
   `(powerline-mode-inactive      ((t :background ,base1                        :foreground ,(color-lighten-name base1 20)     :box nil)))
   `(powerline-first-normal       ((t :background ,base1                        :foreground ,(color-lighten-name base2 50))))
   `(powerline-first-insert       ((t :background "#87d7ff"                     :foreground "#005f87")))
   `(powerline-first-inactive     ((t :background ,(color-darken-name base1 5)  :foreground ,(color-lighten-name base2 20))))
   `(powerline-second-normal      ((t :background ,base2                        :foreground ,(color-lighten-name base2 50))))
   `(powerline-second-insert      ((t :background "#0087af"                     :foreground "#87d7ff")))
   `(powerline-second-inactive    ((t :background ,(color-darken-name base2 5)  :foreground ,(color-lighten-name base2 20))))
   `(powerline-third-normal       ((t :background ,base3                        :foreground ,(color-lighten-name base3 50))))
   `(powerline-third-insert       ((t :background "#005f87"                     :foreground "#87d7ff")))
   `(powerline-third-inactive     ((t :background ,(color-darken-name base3 5)  :foreground ,(color-lighten-name base3 20))))
   `(powerline-buffer-id-normal   ((t :inherit (powerline-second-normal))))
   `(powerline-buffer-id-insert   ((t :inherit (powerline-second-insert))))
   `(powerline-buffer-id-inactive ((t :inherit (powerline-second-inactive))))
   ;; Highlight
   `(highlight           ((t :background ,base2 :foreground ,base-2)))
   `(isearch             ((t :background ,(color-darken-name yellow 5) :foreground ,base4 :box (:line-width -1 :color ,(color-lighten-name yellow 5) :style nil))))
   `(query-replace       ((t :inherit (isearch))))
   `(lazy-highlight      ((t :background nil :inherit (isearch))))
   `(region              ((((class color) (min-colors 257)) :background ,base2 :foreground unspecified)
                          (t                                 :background ,base2 :foreground unspecified)))
   `(secondary-selection ((t :background ,base3)))
   `(trailing-whitespace ((((class color)) :background ,red) (t :inverse-video t)))
   `(escape-glyph        ((t :foreground ,yellow)))
   ;; whitespace
   `(whitespace-line ((t :background ,yellow :foreground ,base4)))
   ;; Main
   `(font-lock-builtin-face              ((((class color) (min-colors 257)) :foreground ,blue)
                                          (t                                :foreground ,blue-256)))
   `(font-lock-comment-delimiter-face    ((t :inherit (font-lock-comment-face))))
   `(font-lock-comment-face              ((t :foreground unspecified :inherit (shadow))))
   `(font-lock-constant-face             ((((class color) (min-colors 257)) :foreground ,green)
                                          (t                                :foreground ,green-256)))
   `(font-lock-doc-face                  ((t :slant italic :inherit (shadow))))
   `(font-lock-function-name-face        ((t :foreground ,yellow :slant italic)))
   `(font-lock-keyword-face              ((((class color) (min-colors 257)) :foreground ,blue)
                                          (t                                :foreground ,blue-256)))
   `(font-lock-negation-char-face        ((((class color) (min-colors 257)) :foreground ,blue)
                                          (t                                :foreground ,blue-256)))
   `(font-lock-preprocessor-face         ((t :foreground ,magenta)))
   `(font-lock-regexp-grouping-backslash ((t :weight bold)))
   `(font-lock-regexp-grouping-construct ((t :weight bold)))
   `(font-lock-string-face               ((((class color) (min-colors 257)) :foreground ,cyan)
                                          (t                                :foreground ,cyan-256)))
   `(font-lock-type-face                 ((t :foreground ,violet)))
   `(font-lock-variable-name-face        ((t :foreground ,green)))
   `(font-lock-warning-face              ((t :background ,violet :foreground ,base4)))
   ;; completions
   `(completions-common-part      ((t :foreground ,violet :weight bold)))
   `(completions-first-difference ((t :foreground ,blue)))
   ;; show-paren-mode
   `(show-paren-match-face ((t :background nil :foreground ,blue)))
   ;; auto-complete
   `(ac-completion-face ((t :inherit (shadow) :foreground ,base-2 :underline unspecified)))
   `(ac-candidate-face  ((t :inherit(default) :background ,base3)))
   `(ac-selection-face  ((t :inherit (ac-candidate-face) :background ,base2 :foreground ,base-2 :weight bold)))
   ;; company-mode
   `(company-tooltip                  ((t :inherit (default) :background ,base3)))
   `(company-tooltip-selection        ((t :inherit (company-tooltip) :background ,base2 :foreground ,base-2 :weight bold)))
   `(company-tooltip-search           ((t :inherit (isearch))))
   `(company-tooltip-mouse            ((t :inherit (company-tooltip-selection))))
   `(company-tooltip-common           ((t :inherit (company-tooltip) :foreground ,green :weight bold)))
   `(company-tooltip-common-selection ((t :inherit (company-tooltip-selection) :foreground ,green)))
   `(company-tooltip-annotation       ((t :inherit (company-tooltip) :foreground ,blue)))
   `(company-scrollbar-fg             ((t :background ,base0)))
   `(company-scrollbar-bg             ((t :inherit (company-tooltip))))
   `(company-preview                  ((t :foreground ,base-2 )))
   `(company-preview-common           ((t :foreground ,green)))
   `(company-preview-search           ((t :inherit (isearch))))
   `(company-echo                     nil)
   `(company-echo-common              ((t :inherit (company-echo) :foreground ,green :weight bold)))
   ;; diff-mode
   `(diff-header         ((t :background ,base3 :foreground ,violet :weight bold)))
   `(diff-file-header    ((t :weight bold :inherit (diff-header))))
   `(diff-index          ((t :inherit (diff-file-header))))
   `(diff-hunk-header    ((default :inherit (diff-header))
                          (((class color) (min-colors 257)) :foreground ,red)
                          (t                                :foreground ,red-256)))
   `(diff-removed        ((t :background ,diff-rm  :foreground ,base-2)))
   `(diff-added          ((t :background ,diff-add :foreground ,base-2)))
   `(diff-changed        ((t)))
   `(diff-function       ((t :foreground ,red :background ,base4 :inherit (diff-header))))
   `(diff-context        ((t :foreground ,base1)))
   `(diff-nonexistent    ((t :inherit (diff-file-header))))
   `(diff-refine-removed ((t :foreground ,(color-lighten-name diff-rm  40) :weight bold)))
   `(diff-refine-added   ((t :foreground ,(color-lighten-name diff-add 40) :weight bold)))
   `(diff-refine-change  ((t :inherit (diff-refine-added))))
   ;; Magit
   `(magit-item-highlight ((t :inherit (highlight))))
   ;; Minimap
   `(minimap-active-region-background ((t :inherit (highlight))))
   ;; Ediff
   `(ediff-current-diff-A ((t :inherit (diff-removed) :background unspecified :foreground unspecified :weight bold)))
   `(ediff-current-diff-B ((t :inherit (diff-added)   :background unspecified :foreground unspecified :weight bold)))
   `(ediff-current-diff-C ((t                         :background ,base-1     :foreground unspecified :weight bold)))
   `(ediff-odd-diff-A     ((t :inherit (diff-removed) :background unspecified :foreground unspecified)))
   `(ediff-odd-diff-B     ((t :inherit (diff-added)   :background unspecified :foreground unspecified)))
   `(ediff-odd-diff-C     ((t                         :background ,base-1     :foreground unspecified)))
   `(ediff-even-diff-A    ((t :inherit (diff-removed) :background unspecified :foreground unspecified)))
   `(ediff-even-diff-B    ((t :inherit (diff-added)   :background unspecified :foreground unspecified)))
   `(ediff-even-diff-C    ((t                         :background ,base-1     :foreground unspecified)))
   `(ediff-fine-diff-A    ((t :inherit (diff-refine-removed)                  :foreground unspecified)))
   `(ediff-fine-diff-B    ((t :inherit (diff-refine-added)                    :foreground unspecified)))
   `(ediff-fine-diff-C    ((t                         :background ,base-1     :foreground unspecified)))
   ;; Helm
   `(helm-source-header    ((t :background unspecified :foreground ,blue :height 1.414 :weight bold)))
   `(helm-header           ((t :background ,violet      :foreground ,base4 :height 1.414)))
   `(helm-candidate-number ((t :background unspecified :foreground ,base0)))
   `(helm-selection        ((t :background ,base2      :foreground ,base-2 :weight bold :underline nil)))
   `(helm-match            ((t :foreground ,green :weight bold)))
   ;; ElScreen
   `(elscreen-tab-background-face     ((((class color) (min-colors 257)) :inherit (variable-pitch) :background ,base3 :foreground ,base-1 :underline nil :height 1.4 :box (:line-width 8 :color ,base3))
                                       (t                                :inherit (variable-pitch) :background ,base3 :foreground ,base-1 :underline nil :height 1.4 :box (:line-width 8 :color ,base3-256))))
   `(elscreen-tab-control-face        ((t :background ,base2 :foreground ,base-1 :underline nil)))
   `(elscreen-tab-current-screen-face ((t                                :inherit (elscreen-tab-background-face) :foreground ,base-2 :height 1.0 :background unspecified :weight bold :underline ,(color-saturate-name cyan 80))))
   `(elscreen-tab-other-screen-face   ((((class color) (min-colors 257)) :inherit (elscreen-tab-background-face) :foreground ,base1 :height 1.0)
                                       (t                                :inherit (elscreen-tab-background-face) :foreground ,base1 :height 1.0)))
   ;; Shell
   `(comint-highlight-prompt ((t :foreground ,blue    :weight bold)))
   `(comint-highlight-input  ((t :foreground ,base-2 :weight bold)))
   ;; DDSKK
   `(skk-henkan-face ((t :inherit (default) :foreground ,base-2)))
   `(skk-jisyo-registration-badge-face ((t :background ,yellow :foreground ,base-2)))
   `(skk-inline-show-face ((t :inherit (default))))
   `(skk-verbose-intention-face ((t :inherit (shadow))))
   `(skk-dcomp-face ((t :foreground ,base-2)))
   `(skk-dcomp-multiple-face  ((t :background ,base3 :foreground ,green)))
   `(skk-dcomp-multiple-trailing-face ((t :inherit (skk-dcomp-multiple-face) :foreground ,base0)))
   `(skk-dcomp-multiple-selected-face ((t :inherit (skk-dcomp-multiple-face) :foreground ,base-2 :weight bold)))
   )
  ;; pos-tip.el
  (setq pos-tip-background-color base2
        pos-tip-foreground-color base-1)
  ;; highlight-parentheses
  (setq hl-paren-colors
        '(,(color-darken-name blue  0)
          ,(color-darken-name blue  4)
          ,(color-darken-name blue  8)
          ,(color-darken-name blue 12)
          ,(color-darken-name blue 16)))
  ;; DDSKK
  (defface skk-henkan-face nil "*変換候補の face 属性。")
  (setq skk-henkan-face 'skk-henkan-face)
  (defface skk-inline-show-face nil "")
  (setq skk-inline-show-face 'skk-inline-show-face)
  (setq skk-inline-show-background-color base3)
  (setq skk-inline-show-background-color-odd (color-lighten-name base3 5)))

(provide-theme 'night)

;; Local Variables:
;; eval: (add-to-list 'custom-theme-load-path (file-name-directory (buffer-file-name)))
;; eval: (global-set-key (kbd "<f12>") (lambda () (interactive) (load-theme 'night)))
;; eval: (rainbow-mode)
;; End:

;;; night-theme.el ends here
