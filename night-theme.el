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

(let (;; Palette
      (base4   "#202026") (base4-256   "#303030")
      (base3   "#303038") (base3-256   "#444444")
      (base2   "#40404a") (base2-256   "#4e4e4e")
      (base1   "#50505b") (base1-256   "#6c6c6c")
      (base0   "#80808d") (base0-256   "#b2b2b2")
      (base-1  "#d0d0de") (base-1-256  "#d0d0d0")
      (base-2  "#f0f0ff") (base-2-256  "#eeeeee")
      (red     "#da8a8a") (red-256     "#d75f5f")
      (orange  "#cd720f") (orange-256  "#d78700")
      (yellow  "#ffeb81") (yellow-256  "#dfaf00")
      (green   "#d8f572") (green-256   "#87af00")
      (cyan    "#9ef9ef") (cyan-256    "#00afaf")
      (blue    "#8fc6fa") (blue-256    "#0087ff")
      (violet  "#b59cf8") (violet-256  "#875fff")
      (magenta "#ecb9e1") (magenta-256 "#d75faf"))
  ;; Set attributes of the default face for existing frames and new frames.
  (set-face-attribute 'default nil :background base4 :foreground base-1)
  (set-face-attribute 'cursor  nil :background base-1)
  ;; Custom theme
  (custom-theme-set-faces
   'night
   ;; Standard
   `(default        ((t :background ,base4 :foreground ,base-1)))
   `(fixed-pitch    ((t :family "monospace")))
   `(variable-pitch ((t :family "sans serif")))
   `(shadow         ((t :foreground ,base1)))
   ;; Frame
   `(cursor             ((((class color) (min-colors 257)) :background ,base-1)
                         (t                                :background ,base-1-256)))
   `(fringe             ((((class color) (min-colors 257)) :background ,base3 :foreground ,base1 :weight bold)
                         (t                                :background ,base3 :foreground ,base1 :weight bold)))
   `(menu               ((t :background ,base3    :foreground ,base-1   :inverse-video nil)))
   `(linum              ((t :inherit (fringe))))
   `(mode-line          ((t :background ,base2    :foreground ,base-1  :box nil)))
   `(mode-line-inactive ((t :background ,base3    :foreground ,base0   :box nil)))
   `(minibuffer-prompt  ((t :foreground ,base-1)))
   ;; hlinum
   `(linum-highlight-face ((t :inherit (linum) :foreground ,base-2)))
   ;; powerline
   `(powerline-mode-normal        ((t :background "#afd700" :foreground "#005f00" :box nil :weight bold)))
   `(powerline-mode-insert        ((t :background "#ffffff" :foreground "#005f5f" :box nil :weight bold)))
   `(powerline-mode-visual        ((t :background "#ffaf00" :foreground "#875f00" :box nil :weight bold)))
   `(powerline-mode-replace       ((t :background "#d70000" :foreground "#ffffff" :box nil :weight bold)))
   `(powerline-mode-operator      ((t :background "#d70000" :foreground "#ffffff" :box nil :weight bold)))
   `(powerline-mode-emacs         ((t :background "gray60"  :foreground "black"   :box nil :weight bold)))
   `(powerline-mode-inactive      ((t :background "gray40"  :foreground "gray55"  :box nil)))
   `(powerline-first-normal       ((t :background "gray45"  :foreground "gray90")))
   `(powerline-first-insert       ((t :background "#87d7ff" :foreground "#005f87")))
   `(powerline-first-inactive     ((t :background "gray40"  :foreground "gray55")))
   `(powerline-second-normal      ((t :background "gray35"  :foreground "gray80")))
   `(powerline-second-insert      ((t :background "#0087af" :foreground "#87d7ff")))
   `(powerline-second-inactive    ((t :background "gray30"  :foreground "gray45")))
   `(powerline-third-normal       ((t :background "gray25"  :foreground "gray70")))
   `(powerline-third-insert       ((t :background "#005f87" :foreground "#87d7ff")))
   `(powerline-third-inactive     ((t :background "gray20"  :foreground "gray35")))
   `(powerline-buffer-id-normal   ((t :inherit (powerline-second-normal))))
   `(powerline-buffer-id-insert   ((t :inherit (powerline-second-insert))))
   `(powerline-buffer-id-inactive ((t :inherit (powerline-second-inactive))))
   ;; Highlight
   `(highlight           ((t :background ,base3)))
   `(isearch             ((t :background ,(color-lighten-name yellow 20) :foreground ,base4 :box (:line-width -1 :color ,(color-darken-name yellow 20) :style nil))))
   `(query-replace       ((t :inherit (isearch))))
   `(lazy-highlight      ((t :background nil :inherit (isearch))))
   `(region              ((((class color) (min-colors 257)) :background ,yellow     :foreground ,base4)
                          (t                                :background ,yellow-256 :foreground ,base4-256)))
   `(secondary-selection ((t :background ,base3)))
   `(trailing-whitespace ((((class color)) :background ,red) (t :inverse-video t)))
   `(escape-glyph        ((t :foreground ,blue)))
   ;; whitespace
   `(whitespace-line ((t :background ,yellow :foreground ,base4)))
   ;; Main
   `(font-lock-builtin-face              ((((class color) (min-colors 257)) :foreground ,orange)
                                          (t                                :foreground ,orange-256)))
   `(font-lock-comment-delimiter-face    ((t :inherit (font-lock-comment-face))))
   `(font-lock-comment-face              ((t :foreground unspecified :inherit (shadow))))
   `(font-lock-constant-face             ((((class color) (min-colors 257)) :foreground ,violet)
                                          (t                                :foreground ,violet-256)))
   `(font-lock-doc-face                  ((t :slant italic :inherit (shadow))))
   `(font-lock-function-name-face        ((t :foreground ,blue :slant italic)))
   `(font-lock-keyword-face              ((((class color) (min-colors 257)) :foreground ,red)
                                          (t                                :foreground ,red-256)))
   `(font-lock-negation-char-face        ((((class color) (min-colors 257)) :foreground ,red)
                                          (t                                :foreground ,red-256)))
   `(font-lock-preprocessor-face         ((t :foreground ,magenta)))
   `(font-lock-regexp-grouping-backslash ((t :weight bold)))
   `(font-lock-regexp-grouping-construct ((t :weight bold)))
   `(font-lock-string-face               ((((class color) (min-colors 257)) :foreground ,cyan)
                                          (t                                :foreground ,cyan-256)))
   `(font-lock-type-face                 ((t :foreground ,yellow)))
   `(font-lock-variable-name-face        ((t :foreground ,green)))
   `(font-lock-warning-face              ((t :background ,yellow :foreground ,base4)))
   ;; completions
   `(completions-common-part      ((t :foreground ,yellow :weight bold)))
   `(completions-first-difference ((t :foreground ,red)))
   ;; show-paren-mode
   `(show-paren-match-face ((t :background nil :foreground ,orange)))
   ;; auto-complete
   `(ac-completion-face ((t :inherit (shadow) :foreground ,base-2 :underline unspecified)))
   `(ac-candidate-face  ((t :inherit(default) :background ,base3)))
   `(ac-selection-face  ((t :inherit (ac-candidate-face) :background ,base2 :foreground ,base-2 :weight bold)))
   ;; company-mode
   `(company-tooltip                  ((t :inherit (default) :background ,base3)))
   `(company-tooltip-selection        ((t :inherit (company-tooltip) :background ,base2 :foreground ,base-2 :weight bold)))
   `(company-tooltip-search           ((t :inherit (isearch))))
   `(company-tooltip-mouse            ((t :inherit (company-tooltip-selection))))
   `(company-tooltip-common           ((t :inherit (company-tooltip) :foreground ,yellow :weight bold)))
   `(company-tooltip-common-selection ((t :inherit (company-tooltip-selection) :foreground ,yellow)))
   `(company-tooltip-annotation       ((t :inherit (company-tooltip) :foreground ,red)))
   `(company-scrollbar-fg             ((t :background ,base0)))
   `(company-scrollbar-bg             ((t :inherit (company-tooltip))))
   `(company-preview                  ((t :foreground ,base-2 )))
   `(company-preview-common           ((t :foreground ,yellow)))
   `(company-preview-search           ((t :inherit (isearch))))
   `(company-echo                     nil)
   `(company-echo-common              ((t :inherit (company-echo) :foreground ,yellow :weight bold)))
   ;; diff-mode
   `(diff-header         ((t :background ,base3 :foreground ,yellow)))
   `(diff-file-header    ((t :weight bold :inherit (diff-header))))
   `(diff-index          ((t :inherit (diff-file-header))))
   `(diff-hunk-header    ((default :inherit (diff-header))
                          (((class color) (min-colors 257)) :foreground ,violet)
                          (t                                :foreground ,violet-256)))
   `(diff-removed        ((t :background ,(color-darken-name red   40) :foreground ,base-1)))
   `(diff-added          ((t :background ,(color-darken-name green 25) :foreground ,base-1)))
   `(diff-changed        ((t)))
   `(diff-function       ((t :foreground ,orange :background ,base4 :inherit (diff-header))))
   `(diff-context        ((t :foreground ,base1)))
   `(diff-nonexistent    ((t :inherit (diff-file-header))))
   `(diff-refine-removed ((t :foreground ,red   :weight bold)))
   `(diff-refine-added   ((t :foreground ,green :weight bold)))
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
   `(helm-source-header    ((t :background unspecified :foreground ,violet :height 1.414 :weight bold)))
   `(helm-header           ((t :background ,green      :foreground ,base-2 :height 1.414)))
   `(helm-candidate-number ((t :background unspecified :foreground ,base0)))
   `(helm-selection        ((t :background ,base2      :foreground ,base-2 :weight bold :underline nil)))
   `(helm-match            ((t :foreground ,yellow :weight bold)))
   ;; ElScreen
   `(elscreen-tab-background-face     ((((class color) (min-colors 257)) :background ,base3 :foreground ,base0 :underline nil :height 1.414)
                                       (t                                :background ,base3 :foreground ,base0 :underline nil :height 1.414)))
   `(elscreen-tab-control-face        ((t :background ,base2 :foreground ,base0 :underline nil)))
   `(elscreen-tab-current-screen-face ((t :background ,green :foreground ,base-2 :weight bold :underline nil)))
   `(elscreen-tab-other-screen-face   ((((class color) (min-colors 257)) :inherit (elscreen-tab-background-face) :foreground ,base0 :height 0.70)
                                       (t                                :inherit (elscreen-tab-background-face) :foreground ,base0 :height 0.70)))
   ;; Shell
   `(comint-highlight-prompt ((t :foreground ,red    :weight bold)))
   `(comint-highlight-input  ((t :foreground ,base-2 :weight bold)))
   ;; DDSKK
   `(skk-henkan-face ((t :inherit (default) :foreground ,base-2)))
   `(skk-jisyo-registration-badge-face ((t :background ,blue :foreground ,base-2)))
   `(skk-inline-show-face ((t :inherit (default))))
   `(skk-verbose-intention-face ((t :inherit (shadow))))
   `(skk-dcomp-face ((t :foreground ,base-2)))
   `(skk-dcomp-multiple-face  ((t :background ,base3 :foreground ,yellow)))
   `(skk-dcomp-multiple-trailing-face ((t :inherit (skk-dcomp-multiple-face) :foreground ,base0)))
   `(skk-dcomp-multiple-selected-face ((t :inherit (skk-dcomp-multiple-face) :foreground ,base-2 :weight bold)))
   )
  ;; highlight-parentheses
  (setq hl-paren-colors
        '(,(color-darken-name red  0)
          ,(color-darken-name red  4)
          ,(color-darken-name red  8)
          ,(color-darken-name red 12)
          ,(color-darken-name red 16)))
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
;; eval: (rainbow-mode)
;; End:

;;; night-theme.el ends here
