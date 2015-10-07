;;; hydrangea.el --- Theme generator  -*- lexical-binding: t -*-

;; Copyright (C) 2015  Yuta Taniguchi

;; Author: Yuta Taniguchi <yuta.taniguchi.y.t@gmail.com>
;; Keywords: theme, framework
;; Version: 0.1.0

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

(require 'cl-lib)
(require 'pcase)

(defun unwrap-unquote (x)
  (if (and (listp x) (eq (car x) '\,))
      (cadr x)
    x))

(defun eval-for (palette i x)
  (pcase x
    (`(lighten    ,percent ,color) `(,'\, (color-lighten-name    ,(unwrap-unquote (eval-for palette i color)) ,percent)))
    (`(darken     ,percent ,color) `(,'\, (color-darken-name     ,(unwrap-unquote (eval-for palette i color)) ,percent)))
    (`(saturate   ,percent ,color) `(,'\, (color-saturate-name   ,(unwrap-unquote (eval-for palette i color)) ,percent)))
    (`(desaturate ,percent ,color) `(,'\, (color-desaturate-name ,(unwrap-unquote (eval-for palette i color)) ,percent)))
    ((pred symbolp)
     (let ((j 0)
           (found nil))
       (while (and (not found) (< j (length palette)))
         (when (eq x (car (elt palette j)))
           (setq found j))
         (cl-incf j))
       (if found
           `(,'\, (elt (elt palette ,found) ,(+ 1 i)))
         x)))
    ((pred listp)
     (mapcar (lambda (y) (eval-for palette i y)) x))
    (_ x)))

(defun mkspec (palette spec)
  `((((min-colors 65536)) ,@(eval-for palette 0 spec))
    (t                    ,@(eval-for palette 1 spec))))

(defmacro hydrangea-define-theme (theme doc palette face-defs &rest body)
  ""
  (declare (indent defun) (debug t))
  `(progn
     (deftheme ,theme ,doc)

     (defgroup ,(intern (concat (symbol-name theme) "-theme")) nil
       ""
       :group 'customize)
     (defcustom ,(intern (concat (symbol-name theme) "-theme-tune-hue")) 0
       "Percentage of hue by which accent colors in the palette will be adjusted.
Both a positive value and a negative value are accepted."
       :type 'number
       :group ',(intern (concat (symbol-name theme) "-theme")))

     (defcustom ,(intern (concat (symbol-name theme) "-theme-tune-saturation")) 0
       "Percentage of saturation by which accent colors in the palette will be adjusted.
Both a positive value and a negative value are accepted.
This value will be passed to the `color-saturate-name' function."
       :type 'number
       :group ',(intern (concat (symbol-name theme) "-theme")))

     (defcustom ,(intern (concat (symbol-name theme) "-theme-tune-lightness")) 0
       "Percentage of lightness by which accent colors in the palette will be adjusted.
Both a positive value and a negative value are accepted.
This value will be passed to the `color-lighten-name' function."
       :type 'number
       :group ',(intern (concat (symbol-name theme) "-theme")))

     (defun ,(intern (concat (symbol-name theme) "-theme-adjust")) (color-def)
       (let* ((new-def (copy-sequence color-def))
              (color (apply #'color-rgb-to-hsl (color-name-to-rgb (nth 1 color-def))))
              (clamp-hue (lambda (value) (- value (floor value))))
              (new-h (funcall clamp-hue (+ (nth 0 color) (/ ,(intern (concat (symbol-name theme) "-theme-tune-hue"))        100.0))))
              (new-s (color-clamp       (+ (nth 1 color) (/ ,(intern (concat (symbol-name theme) "-theme-tune-saturation")) 100.0))))
              (new-l (color-clamp       (+ (nth 2 color) (/ ,(intern (concat (symbol-name theme) "-theme-tune-lightness"))  100.0)))))
         (setf (nth 1 new-def) (apply #'color-rgb-to-hex (apply #'color-hsl-to-rgb (list new-h new-s new-l))))
         new-def))

     (defcustom ,(intern (concat (symbol-name theme) "-theme-adjustment-mode-line"))
       '(:eval (format ,(concat " " (capitalize (symbol-name theme)) "[H:%+d:S:%+d,L%+d]")
                       ,(intern (concat (symbol-name theme) "-theme-tune-hue"))
                       ,(intern (concat (symbol-name theme) "-theme-tune-saturation"))
                       ,(intern (concat (symbol-name theme) "-theme-tune-lightness"))))
       ""
       :risky t
       :group ',(intern (concat (symbol-name theme) "-theme")))

     ;;;###autoload
     (define-minor-mode ,(intern (concat (symbol-name theme) "-theme-adjustment-mode"))
       "Provides key bindings for a user to adjust the saturation and the lightness of the theme easily."
       :keymap (let ((map (make-sparse-keymap)))
                 (define-key map (kbd "<f5>")  (lambda () (interactive) (setq ,(intern (concat (symbol-name theme) "-theme-tune-hue"))        (- ,(intern (concat (symbol-name theme) "-theme-tune-hue"))        5)) (load-theme ',theme)))
                 (define-key map (kbd "<f6>")  (lambda () (interactive) (setq ,(intern (concat (symbol-name theme) "-theme-tune-hue"))        (+ ,(intern (concat (symbol-name theme) "-theme-tune-hue"))        5)) (load-theme ',theme)))
                 (define-key map (kbd "<f7>")  (lambda () (interactive) (setq ,(intern (concat (symbol-name theme) "-theme-tune-lightness"))  (- ,(intern (concat (symbol-name theme) "-theme-tune-lightness"))  5)) (load-theme ',theme)))
                 (define-key map (kbd "<f8>")  (lambda () (interactive) (setq ,(intern (concat (symbol-name theme) "-theme-tune-lightness"))  (+ ,(intern (concat (symbol-name theme) "-theme-tune-lightness"))  5)) (load-theme ',theme)))
                 (define-key map (kbd "<f9>")  (lambda () (interactive) (setq ,(intern (concat (symbol-name theme) "-theme-tune-saturation")) (- ,(intern (concat (symbol-name theme) "-theme-tune-saturation")) 5)) (load-theme ',theme)))
                 (define-key map (kbd "<f10>") (lambda () (interactive) (setq ,(intern (concat (symbol-name theme) "-theme-tune-saturation")) (+ ,(intern (concat (symbol-name theme) "-theme-tune-saturation")) 5)) (load-theme ',theme)))
                 (define-key map (kbd "<f11>") (lambda ()
                                                 (interactive)
                                                 (setq ,(intern (concat (symbol-name theme) "-theme-tune-hue")) 0
                                                       ,(intern (concat (symbol-name theme) "-theme-tune-saturation")) 0
                                                       ,(intern (concat (symbol-name theme) "-theme-tune-lightness")) 0)
                                                 (load-theme ',theme)))
                 (define-key map (kbd "<f12>") (lambda () (interactive) (load-theme ',theme)))
                 map)
       :lighter ,(intern (concat (symbol-name theme) "-theme-adjustment-mode-line"))
       :global)

     (let ((palette (mapcar #',(intern (concat (symbol-name theme) "-theme-adjust")) ',(macroexpand palette))))
       (custom-theme-set-faces ',theme
                               ,@(mapcar (lambda (def) `(backquote (,(car def) ,(mkspec (macroexpand palette) (cdr def))))) (macroexpand face-defs)))
       ,@body)

     (provide-theme ',theme)))


(provide 'hydrangea)

;;; hydrangea.el ends here
