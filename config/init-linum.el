;;; init-linum.el --- Stuff for line numbers.
;;; Commentary:
;;; Code:
(defface linum-current
  '((t (:inherit linum :background "#171819" :foreground "#FFE83A" :weight bold )))
  "The current line number.")

(defun my-linum-get-format-string ()
  (let* ((width (max 4 (1+ (length (number-to-string
                             (count-lines (point-min) (point-max)))))))
         (format (concat "%" (number-to-string width) "d "))
         (current-line-format (concat "%-" (number-to-string width) "d ")))
    (setq my-linum-format-string format)
	(setq my-linum-current-line-format-string current-line-format)))

(defvar my-linum-current-line-number 0)

(defun my-linum-relative-line-numbers (line-number)
  (let* ((offset (abs (- line-number my-linum-current-line-number)))
         (linum-display-value (if (= 0 offset)
			   my-linum-current-line-number
                                offset))
         (format-string (if (= my-linum-current-line-number line-number) my-linum-current-line-format-string my-linum-format-string))
         (face (if (= my-linum-current-line-number line-number) 'linum-current 'linum)))
    (propertize (format format-string linum-display-value) 'face face)))

(defadvice linum-update (around my-linum-update)
  (let ((my-linum-current-line-number (line-number-at-pos)))
    ad-do-it))
(ad-activate 'linum-update)

;;; This is the actual line number format definition.
(setq linum-format 'my-linum-relative-line-numbers)

;;; Set up relative line numbering to mimic `:set number relativenumber`.
(add-hook 'linum-before-numbering-hook 'my-linum-get-format-string)
(global-linum-mode 1)
(set-fringe-mode '(0 . 1)) ;; remove left fringe

;; Fix number font size
(eval-after-load "linum"
				   '(set-face-attribute 'linum nil :height 100))
(provide 'init-linum)
;;; init-linum.el ends here
