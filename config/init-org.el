;; code goes here

(require 'org)
(eval-after-load "org"
  '(require 'ox-md nil t))
;; Use org indent mode for nicer indentation
(org-indent-mode)

(add-to-list 'ac-modes 'org-mode)
(setq
 org-src-fontify-natively t
 org-todo-keywords '((sequence "TODO(t)" "DOING(g)" "|" "DONE(d)")
                     (sequence "|" "CANCELED(c)")))   ;; Pretty code blocks
;; Smaller TODO icons
(font-lock-add-keywords
 'org-mode `(("^\\*+ \\(TODO\\) "
              (1 (progn (compose-region (match-beginning 1) (match-end 1) "⚑")
                        nil)))
             ("^\\*+ \\(DOING\\) "
              (1 (progn (compose-region (match-beginning 1) (match-end 1) "⚐")
                        nil)))
             ("^\\*+ \\(CANCELED\\) "
              (1 (progn (compose-region (match-beginning 1) (match-end 1) "✘")
                        nil)))
             ("^\\*+ \\(DONE\\) "
              (1 (progn (compose-region (match-beginning 1) (match-end 1) "✔")
                        nil)))))
;; Pretty bullets
(use-package org-bullets
  :ensure t
  :init (add-hook 'org-mode-hook 'org-bullets-mode))
(use-package org
  :init
  (font-lock-add-keywords 'org-mode
                          '(("^ +\\([-*]\\) "
                             (0 (prog1 () (compose-region (match-beginning 1) (match-end 1) "•")))))))

;; Latex settings
;; (setenv "PATH" (concat "/Library/TeX/texbin" (getenv "PATH")))
;; (setq exec-path (append '("/Library/TeX/texbin") exec-path))
(setenv "PATH" (concat (getenv "PATH") ":/Library/TeX/texbin"))
(setq exec-path (append exec-path '("/Library/TeX/texbin")))
(setq org-format-latex-options (plist-put org-format-latex-options :scale 2.0))
(defun update-org-latex-fragment-scale ()
  (let ((text-scale-factor (expt text-scale-mode-step text-scale-mode-amount)))
    (plist-put org-format-latex-options :scale (* 2.3 text-scale-factor)))
  )
(add-hook 'text-scale-mode-hook 'update-org-latex-fragment-scale)
(require 'ox-latex)
(unless (boundp 'org-latex-classes)
  (setq org-latex-classes nil))
(add-to-list 'org-latex-classes
             '("article"
               "\\documentclass{article}"
               ("\\section{%s}" . "\\section*{%s}")))
(setq org-latex-to-pdf-process '("texi2dvi --pdf --clean --verbose --batch %f"))
(setq org-latex-create-formula-image-program 'dvipng)
(setq org-export-latex-listings t)

;; Fix image size
(setq org-image-actual-width nil)

;; ox-reveal
(require 'ox-reveal)
(setq org-reveal-root "file://~/org/reveal.js")
;; ox-twbs
(require 'ox-twbs)

(provide 'init-org)
;;; init-org.el ends here
