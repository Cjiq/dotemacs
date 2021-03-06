;; code goes here

(add-to-list 'load-path
             "~/.emacs.d/plugins/yasnippet")
(setq yas-snippet-dirs
      '("~/.emacs.d/snippets")) ;; peronal snippets
(require 'yasnippet)
(yas-global-mode 1)

(define-key yas-minor-mode-map (kbd "<tab>") nil)
(define-key yas-minor-mode-map (kbd "TAB") nil)
(define-key yas-minor-mode-map (kbd "C-y") 'yas-expand)

(provide 'init-yasnippet)
;;; init-yasnippet ends here
