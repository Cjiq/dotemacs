;; code goes here
(require 'cc-mode)
(setq c-default-style "linux"
      c-basic-offset 2)
(setq-default c-basic-offset 2
              tab-width 2
              indent-tabs-mode nil)
(define-key c-mode-base-map (kbd "RET") 'newline-and-indent)
(add-to-list 'auto-mode-alist '("\\.hps\\'" . c++-mode))
(provide 'init-c-modes)
