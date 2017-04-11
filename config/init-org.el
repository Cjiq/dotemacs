;; code goes here

(require 'org)
(eval-after-load "org"
  '(require 'ox-md nil t))

(add-to-list 'ac-modes 'org-mode)

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
(add-to-list 'org-latex-classes
          '("article-class"
             "\\documentclass{article}
              \\usepackage[usenames]{color}
              \\usepackage{amsmath}
              \\usepackage[mathscr]{eucal}
              \\usepackage[utf8]{inputenc}
              \\usepackage[version=4]{mhchem}
              \\usepackage[T1]{fontenc}
              \\usepackage{graphicx}
              \\usepackage[normalem]{ulem}
              \\usepackage{textcomp}
              \\usepackage{marvosym}
              \\usepackage{wasysym}
              \\usepackage{latexsym}
              \\usepackage{amssymb}
              \\usepackage{pdftexcmds}
             "
           ("\\section{%s}" . "\\section*{%s}")
           ("\\subsection{%s}" . "\\subsection*{%s}")
           ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
           ("\\paragraph{%s}" . "\\paragraph*{%s}")
           ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))
(add-to-list 'org-latex-classes
          '("ReportLTU"
                "\\documentclass{/Users/Cjiq/.emacs.d/config/ReportLTU}
                [NO-DEFAULT-PACKAGES]
                [PACKAGES]
                [EXTRA]
                "
           ("\\section{%s}" . "\\section*{%s}")
           ("\\subsection{%s}" . "\\subsection*{%s}")
           ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
           ("\\paragraph{%s}" . "\\paragraph*{%s}")
           ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))
;; ox-reveal
(require 'ox-reveal)
(setq org-reveal-root "file:///home/cjiq/org/reveal.js")
;; ox-twbs
(require 'ox-twbs)

(provide 'init-org)
;;; init-org.el ends here
