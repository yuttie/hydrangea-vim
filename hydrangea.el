;;; hydrangea.el --- Theme building framework for Emacs  -*- lexical-binding: t -*-

;; Copyright (C) 2015  Yuta Taniguchi

;; Author: Yuta Taniguchi <yuta.taniguchi.y.t@gmail.com>
;; Keywords: theme, framework
;; Version: 1.0.1

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

(defun hydrangea-unwrap-unquote (x)
  (if (and (listp x) (eq (car x) '\,))
      (cadr x)
    x))

(defun hydrangea-eval-for (palette i x)
  (pcase x
    (`(lighten    ,percent ,color) `(,'\, (color-lighten-name    ,(hydrangea-unwrap-unquote (hydrangea-eval-for palette i color)) ,percent)))
    (`(darken     ,percent ,color) `(,'\, (color-darken-name     ,(hydrangea-unwrap-unquote (hydrangea-eval-for palette i color)) ,percent)))
    (`(saturate   ,percent ,color) `(,'\, (color-saturate-name   ,(hydrangea-unwrap-unquote (hydrangea-eval-for palette i color)) ,percent)))
    (`(desaturate ,percent ,color) `(,'\, (color-desaturate-name ,(hydrangea-unwrap-unquote (hydrangea-eval-for palette i color)) ,percent)))
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
     (mapcar (lambda (y) (hydrangea-eval-for palette i y)) x))
    (_ x)))

(defun hydrangea-mkspec (palette spec)
  `((((min-colors 65536)) ,@(hydrangea-eval-for palette 0 spec))
    (t                    ,@(hydrangea-eval-for palette 1 spec))))

(defmacro hydrangea-define-theme (theme palette face-defs doc &rest body)
  ""
  (declare (indent defun) (debug t))
  (cl-labels
      ((theme-sym (&optional name)
                  (intern (concat (symbol-name theme) "-theme" (if name (concat "-" name) nil)))))
    `(progn
       (deftheme ,theme ,doc)

       (require 'color)

       (defgroup ,(theme-sym) nil
         ""
         :group 'customize)

       (defcustom ,(theme-sym "tune-hue") 0
         "Percentage of hue by which accent colors in the palette will be adjusted.
Both a positive value and a negative value are accepted."
         :type 'number
         :group ',(theme-sym))

       (defcustom ,(theme-sym "tune-saturation") 0
         "Percentage of saturation by which accent colors in the palette will be adjusted.
Both a positive value and a negative value are accepted.
This value will be passed to the `color-saturate-name' function."
         :type 'number
         :group ',(theme-sym))

       (defcustom ,(theme-sym "tune-lightness") 0
         "Percentage of lightness by which accent colors in the palette will be adjusted.
Both a positive value and a negative value are accepted.
This value will be passed to the `color-lighten-name' function."
         :type 'number
         :group ',(theme-sym))

       (defun ,(theme-sym "adjust") (color-def)
         (let* ((new-def (copy-sequence color-def))
                (color (apply #'color-rgb-to-hsl (color-name-to-rgb (nth 1 color-def))))
                (clamp-hue (lambda (value) (- value (floor value))))
                (new-h (funcall clamp-hue (+ (nth 0 color) (/ ,(theme-sym "tune-hue")        100.0))))
                (new-s (color-clamp       (+ (nth 1 color) (/ ,(theme-sym "tune-saturation") 100.0))))
                (new-l (color-clamp       (+ (nth 2 color) (/ ,(theme-sym "tune-lightness")  100.0)))))
           (setf (nth 1 new-def) (apply #'color-rgb-to-hex (apply #'color-hsl-to-rgb (list new-h new-s new-l))))
           new-def))

       (defcustom ,(theme-sym "adjustment-mode-line")
         '(:eval (format ,(concat " " (capitalize (symbol-name theme)) "[H:%+d:S:%+d,L%+d]")
                         ,(theme-sym "tune-hue")
                         ,(theme-sym "tune-saturation")
                         ,(theme-sym "tune-lightness")))
         ""
         :risky t
         :group ',(theme-sym))

       (defun ,(theme-sym "reload") ()
         (interactive)
         (load-theme ',theme))

       (defun ,(theme-sym "reset") ()
         (interactive)
         (setq ,(theme-sym "tune-hue")        0
               ,(theme-sym "tune-saturation") 0
               ,(theme-sym "tune-lightness")  0)
         (load-theme ',theme))

       (defun ,(theme-sym "decrease-hue") (delta)
         (interactive "p")
         (cl-decf ,(theme-sym "tune-hue") delta)
         (load-theme ',theme))

       (defun ,(theme-sym "increase-hue") (delta)
         (interactive "p")
         (cl-incf ,(theme-sym "tune-hue") delta)
         (load-theme ',theme))

       (defun ,(theme-sym "decrease-saturation") (delta)
         (interactive "p")
         (cl-decf ,(theme-sym "tune-saturation") delta)
         (load-theme ',theme))

       (defun ,(theme-sym "increase-saturation") (delta)
         (interactive "p")
         (cl-incf ,(theme-sym "tune-saturation") delta)
         (load-theme ',theme))

       (defun ,(theme-sym "decrease-lightness") (delta)
         (interactive "p")
         (cl-decf ,(theme-sym "tune-lightness") delta)
         (load-theme ',theme))

       (defun ,(theme-sym "increase-lightness") (delta)
         (interactive "p")
         (cl-incf ,(theme-sym "tune-lightness") delta)
         (load-theme ',theme))

       (define-minor-mode ,(theme-sym "adjustment-mode")
         "Provides key bindings for a user to adjust the saturation and the lightness of the theme easily."
         :keymap (let ((map (make-sparse-keymap)))
                   (define-key map (kbd "<f5>")  #',(theme-sym "reload"))
                   (define-key map (kbd "<f6>")  #',(theme-sym "reset"))
                   (define-key map (kbd "<f7>")  #',(theme-sym "decrease-hue"))
                   (define-key map (kbd "<f8>")  #',(theme-sym "increase-hue"))
                   (define-key map (kbd "<f9>")  #',(theme-sym "decrease-saturation"))
                   (define-key map (kbd "<f10>") #',(theme-sym "increase-saturation"))
                   (define-key map (kbd "<f11>") #',(theme-sym "decrease-lightness"))
                   (define-key map (kbd "<f12>") #',(theme-sym "increase-lightness"))
                   map)
         :lighter ,(theme-sym "adjustment-mode-line")
         :global)

       (let ((palette (mapcar #',(theme-sym "adjust") ',(macroexpand palette))))
         (custom-theme-set-faces ',theme
                                 ,@(mapcar (lambda (def) `(backquote (,(car def) ,(hydrangea-mkspec (macroexpand palette) (cdr def))))) (macroexpand face-defs)))
         ,@body)

       (provide-theme ',theme))))


(provide 'hydrangea)

;;; hydrangea.el ends here
