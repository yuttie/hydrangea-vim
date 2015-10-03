;;; night-theme.el --- A night theme for Emacs  -*- lexical-binding: t -*-

;; Copyright (C) 2015  Yuta Taniguchi

;; Author: Yuta Taniguchi <yuta.taniguchi.y.t@gmail.com>
;; Keywords: theme, dark
;; Version: 0.2.2

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

(require 'cl-lib)
(require 'color)
(require 'pcase)

(defcustom night-theme-tune-hue 0
  "Percentage of hue by which accent colors in the palette will be adjusted.
Both a positive value and a negative value are accepted."
  :type 'number
  :group 'night-theme)

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

(defconst night-theme-palette
  ;; name     24bit-color 8bit-color
  '((base4    "#202026"   "#1c1c1c")
    (base3    "#303038"   "#303030")
    (base2    "#40404a"   "#444444")
    (base1    "#50505b"   "#4e4e4e")
    (base0    "#80808d"   "#808080")
    (base-1   "#d0d0de"   "#d0d0d0")
    (base-2   "#f0f0ff"   "#eeeeee")
    (red      "#e38484"   "#d78787")
    (orange   "#dda277"   "#dfaf87")
    (yellow   "#e7d56d"   "#dfdf5f")
    (green    "#bdd16e"   "#afd75f")
    (cyan     "#8fd7cf"   "#87d7d7")
    (blue     "#7dc0df"   "#87d7ff")
    (violet   "#a891e7"   "#af87ff")
    (magenta  "#d78cc7"   "#d787d7")
    (emacs    "#5955a9"   "#5955a9")
    (diff-rm  "#6b151e"   "#6b151e")
    (diff-add "#434d13"   "#434d13")))

(defconst night-theme-face-definitions
  '(;; Standard
    (default        :background base4 :foreground base-1)
    (fixed-pitch    :family "monospace")
    (variable-pitch :family "sans serif")
    (shadow         :foreground base1)
    ;; Frame
    (cursor             :background blue)
    (fringe             :background base3 :foreground base1 :weight bold)
    (menu               :background base3    :foreground base-1   :inverse-video nil)
    (linum              :inherit (fringe))
    (mode-line          :inherit (variable-pitch) :background base2 :foreground base-1 :box nil)
    (mode-line-inactive :inherit (variable-pitch) :background base3 :foreground base0  :box nil)
    (minibuffer-prompt  :foreground base-2)
    ;; hlinum
    (linum-highlight-face :inherit (linum) :foreground base-2)
    ;; powerline
    (powerline-mode-normal        :background "#afd700" :foreground "#005f00" :box nil :weight bold)
    (powerline-mode-insert        :background "#ffffff" :foreground "#005f5f" :box nil :weight bold)
    (powerline-mode-visual        :background "#ffaf00" :foreground "#875f00" :box nil :weight bold)
    (powerline-mode-replace       :background "#d70000" :foreground "#ffffff" :box nil :weight bold)
    (powerline-mode-operator      :background "#d70000" :foreground "#ffffff" :box nil :weight bold)
    (powerline-mode-emacs         :background emacs             :foreground (lighten 40 emacs) :box nil :weight bold)
    (powerline-mode-inactive      :background base1             :foreground (lighten 20 base1) :box nil)
    (powerline-first-normal       :background base1             :foreground (lighten 50 base2))
    (powerline-first-insert       :background "#87d7ff"         :foreground "#005f87")
    (powerline-first-inactive     :background (darken 5 base1)  :foreground (lighten 20 base2))
    (powerline-second-normal      :background base2             :foreground (lighten 50 base2))
    (powerline-second-insert      :background "#0087af"         :foreground "#87d7ff")
    (powerline-second-inactive    :background (darken 5 base2) :foreground (lighten 20 base2))
    (powerline-third-normal       :background base3            :foreground (lighten 50 base3))
    (powerline-third-insert       :background "#005f87"        :foreground "#87d7ff")
    (powerline-third-inactive     :background (darken 5 base3):foreground (lighten 20 base3))
    (powerline-buffer-id-normal   :inherit (powerline-second-normal))
    (powerline-buffer-id-insert   :inherit (powerline-second-insert))
    (powerline-buffer-id-inactive :inherit (powerline-second-inactive))
    ;; Highlight
    (highlight           :background base2 :foreground base-2)
    (isearch             :background (darken 5 yellow) :foreground base4 :box (:line-width -1 :color (lighten 5 yellow) :style nil))
    (query-replace       :inherit (isearch))
    (lazy-highlight      :background nil :inherit (isearch))
    (region              :background base2 :foreground unspecified)
    (secondary-selection :background base3)
    (trailing-whitespace :background red)
    (escape-glyph        :foreground yellow)
    ;; whitespace
    (whitespace-line :background yellow :foreground base4)
    ;; Main
    (font-lock-builtin-face :foreground blue)
    (font-lock-comment-delimiter-face    :inherit (font-lock-comment-face))
    (font-lock-comment-face              :foreground unspecified :inherit (shadow))
    (font-lock-constant-face             :foreground green)
    (font-lock-doc-face                  :slant italic :inherit (shadow))
    (font-lock-function-name-face        :foreground yellow :slant italic)
    (font-lock-keyword-face              :foreground blue)
    (font-lock-negation-char-face        :foreground blue)
    (font-lock-preprocessor-face         :foreground magenta)
    (font-lock-regexp-grouping-backslash :weight bold)
    (font-lock-regexp-grouping-construct :weight bold)
    (font-lock-string-face               :foreground cyan)
    (font-lock-type-face                 :foreground violet)
    (font-lock-variable-name-face        :foreground green)
    (font-lock-warning-face              :background violet :foreground base4)
    ;; completions
    (completions-common-part      :foreground violet :weight bold)
    (completions-first-difference :foreground blue)
    ;; show-paren-mode
    (show-paren-match-face :background nil :foreground blue)
    ;; auto-complete
    (ac-completion-face :inherit (shadow) :foreground base-2 :underline unspecified)
    (ac-candidate-face  :inherit(default) :background base3)
    (ac-selection-face  :inherit (ac-candidate-face) :background base2 :foreground base-2 :weight bold)
    ;; company-mode
    (company-tooltip                  :inherit (default) :background base3)
    (company-tooltip-selection        :inherit (company-tooltip) :background base2 :foreground base-2 :weight bold)
    (company-tooltip-search           :inherit (isearch))
    (company-tooltip-mouse            :inherit (company-tooltip-selection))
    (company-tooltip-common           :inherit (company-tooltip) :foreground green :weight bold)
    (company-tooltip-common-selection :inherit (company-tooltip-selection) :foreground green)
    (company-tooltip-annotation       :inherit (company-tooltip) :foreground blue)
    (company-scrollbar-fg             :background base0)
    (company-scrollbar-bg             :inherit (company-tooltip))
    (company-preview                  :foreground base-2 )
    (company-preview-common           :foreground green)
    (company-preview-search           :inherit (isearch))
    (company-echo                     )
    (company-echo-common              :inherit (company-echo) :foreground green :weight bold)
    ;; diff-mode
    (diff-header         :background base3 :foreground violet :weight bold)
    (diff-file-header    :weight bold :inherit (diff-header))
    (diff-index          :inherit (diff-file-header))
    (diff-hunk-header    :inherit (diff-header) :foreground red)
    (diff-removed        :background diff-rm  :foreground base-2)
    (diff-added          :background diff-add :foreground base-2)
    (diff-changed        )
    (diff-function       :foreground red :background base4 :inherit (diff-header))
    (diff-context        :foreground base1)
    (diff-nonexistent    :inherit (diff-file-header))
    (diff-refine-removed :foreground (lighten 40 diff-rm)  :weight bold)
    (diff-refine-added   :foreground (lighten 40 diff-add) :weight bold)
    (diff-refine-change  :inherit (diff-refine-added))
    ;; Magit
    (magit-item-highlight :inherit (highlight))
    ;; Minimap
    (minimap-active-region-background :inherit (highlight))
    ;; Ediff
    (ediff-current-diff-A :inherit (diff-removed) :background unspecified :foreground unspecified :weight bold)
    (ediff-current-diff-B :inherit (diff-added)   :background unspecified :foreground unspecified :weight bold)
    (ediff-current-diff-C :background base-1     :foreground unspecified :weight bold)
    (ediff-odd-diff-A     :inherit (diff-removed) :background unspecified :foreground unspecified)
    (ediff-odd-diff-B     :inherit (diff-added)   :background unspecified :foreground unspecified)
    (ediff-odd-diff-C     :background base-1     :foreground unspecified)
    (ediff-even-diff-A    :inherit (diff-removed) :background unspecified :foreground unspecified)
    (ediff-even-diff-B    :inherit (diff-added)   :background unspecified :foreground unspecified)
    (ediff-even-diff-C    :background base-1     :foreground unspecified)
    (ediff-fine-diff-A    :inherit (diff-refine-removed)                  :foreground unspecified)
    (ediff-fine-diff-B    :inherit (diff-refine-added)                    :foreground unspecified)
    (ediff-fine-diff-C    :background base-1     :foreground unspecified)
    ;; Helm
    (helm-source-header    :background unspecified :foreground blue :height 1.414 :weight bold)
    (helm-header           :background violet      :foreground base4 :height 1.414)
    (helm-candidate-number :background unspecified :foreground base0)
    (helm-selection        :background base2      :foreground base-2 :weight bold :underline nil)
    (helm-match            :foreground green :weight bold)
    ;; ElScreen
    (elscreen-tab-background-face     :inherit (variable-pitch) :background base3 :foreground base-1 :underline nil :height 1.4 :box (:line-width 8 :color base3))
    (elscreen-tab-control-face        :background base2 :foreground base-1 :underline nil)
    (elscreen-tab-current-screen-face :inherit (elscreen-tab-background-face) :foreground base-2 :height 1.0 :background unspecified :weight bold :underline (saturate 80 cyan))
    (elscreen-tab-other-screen-face   :inherit (elscreen-tab-background-face) :foreground base1 :height 1.0)
    ;; Shell
    (comint-highlight-prompt :foreground blue    :weight bold)
    (comint-highlight-input  :foreground base-2 :weight bold)
    ;; DDSKK
    (skk-henkan-face :inherit (default) :foreground base-2)
    (skk-jisyo-registration-badge-face :background yellow :foreground base-2)
    (skk-inline-show-face :inherit (default))
    (skk-verbose-intention-face :inherit (shadow))
    (skk-dcomp-face :foreground base-2)
    (skk-dcomp-multiple-face  :background base3 :foreground green)
    (skk-dcomp-multiple-trailing-face :inherit (skk-dcomp-multiple-face) :foreground base0)
    (skk-dcomp-multiple-selected-face :inherit (skk-dcomp-multiple-face) :foreground base-2 :weight bold)))

(defun night-theme-make-face-spec (palette spec)
  "Make a face spec based on SPEC picking up colors from PALETTE."
  (cl-labels
      ((eval-for (i x)
                 (pcase x
                   (`(lighten    ,percent ,color) (color-lighten-name    (eval-for i color) percent))
                   (`(darken     ,percent ,color) (color-darken-name     (eval-for i color) percent))
                   (`(saturate   ,percent ,color) (color-saturate-name   (eval-for i color) percent))
                   (`(desaturate ,percent ,color) (color-desaturate-name (eval-for i color) percent))
                   ((pred symbolp)
                    (pcase (assq x palette)
                      (`(,_ . ,colors) (nth i colors))
                      (_ x)))
                   ((pred listp)
                    (mapcar (lambda (y) (eval-for i y)) x))
                   (_ x))))
    `((((min-colors 65536)) ,@(eval-for 0 spec))
      (t                    ,@(eval-for 1 spec)))))

(defun night-theme-adjust (color-def)
  (let* ((new-def (copy-sequence color-def))
         (color (apply #'color-rgb-to-hsl (color-name-to-rgb (nth 1 color-def))))
         (clamp-hue (lambda (value) (- value (floor value))))
         (new-h (funcall clamp-hue (+ (nth 0 color) (/ night-theme-tune-hue        100.0))))
         (new-s (color-clamp       (+ (nth 1 color) (/ night-theme-tune-saturation 100.0))))
         (new-l (color-clamp       (+ (nth 2 color) (/ night-theme-tune-lightness  100.0)))))
    (setf (nth 1 new-def) (apply #'color-rgb-to-hex (apply #'color-hsl-to-rgb (list new-h new-s new-l))))
    new-def))

(let ((palette (mapcar #'night-theme-adjust night-theme-palette)))
  ;; Set attributes of the default face for existing frames and new frames.
  (set-face-attribute 'default nil :background (nth 1 (assq 'base4 palette)) :foreground (nth 1 (assq 'base-1 palette)))
  (set-face-attribute 'cursor  nil :background (nth 1 (assq 'blue palette)))
  ;; Custom theme
  (apply 'custom-theme-set-faces
         'night
         (mapcar (lambda (face-def) `(,(car face-def) ,(night-theme-make-face-spec palette (cdr face-def))))
                 night-theme-face-definitions))
  ;; pos-tip.el
  (setq pos-tip-background-color (nth 1 (assq 'base2  palette))
        pos-tip-foreground-color (nth 1 (assq 'base-1 palette)))
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
  (setq skk-inline-show-background-color (nth 1 (assq 'base3 palette)))
  (setq skk-inline-show-background-color-odd (color-lighten-name (nth 1 (assq 'base3 palette)) 5)))

(defcustom night-theme-adjustment-mode-line '(:eval (format " Night[H:%+d:S:%+d,L%+d]" night-theme-tune-hue night-theme-tune-saturation night-theme-tune-lightness))
  ""
  :risky t)

(define-minor-mode night-theme-adjustment-mode
  "Provides key bindings for a user to adjust the saturation and the lightness of the theme easily."
  :keymap (let ((map (make-sparse-keymap)))
            (define-key map (kbd "<f5>")  (lambda () (interactive) (setq night-theme-tune-hue        (- night-theme-tune-hue        5)) (load-theme 'night)))
            (define-key map (kbd "<f6>")  (lambda () (interactive) (setq night-theme-tune-hue        (+ night-theme-tune-hue        5)) (load-theme 'night)))
            (define-key map (kbd "<f7>")  (lambda () (interactive) (setq night-theme-tune-lightness  (- night-theme-tune-lightness  5)) (load-theme 'night)))
            (define-key map (kbd "<f8>")  (lambda () (interactive) (setq night-theme-tune-lightness  (+ night-theme-tune-lightness  5)) (load-theme 'night)))
            (define-key map (kbd "<f9>")  (lambda () (interactive) (setq night-theme-tune-saturation (- night-theme-tune-saturation 5)) (load-theme 'night)))
            (define-key map (kbd "<f10>") (lambda () (interactive) (setq night-theme-tune-saturation (+ night-theme-tune-saturation 5)) (load-theme 'night)))
            (define-key map (kbd "<f11>") (lambda () (interactive) (setq night-theme-tune-hue 0 night-theme-tune-saturation 0 night-theme-tune-lightness 0)    (load-theme 'night)))
            (define-key map (kbd "<f12>") (lambda () (interactive)                                                                      (load-theme 'night)))
            map)
  :lighter night-theme-adjustment-mode-line
  :global)

(provide-theme 'night)

;; Local Variables:
;; eval: (add-to-list 'custom-theme-load-path (file-name-directory (buffer-file-name)))
;; eval: (rainbow-mode)
;; End:

;;; night-theme.el ends here
