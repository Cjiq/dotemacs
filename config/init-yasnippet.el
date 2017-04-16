;; code goes here

(add-to-list 'load-path
             "~/.emacs.d/plugins/yasnippet")
(setq yas-snippet-dirs
      '("~/.emacs.d/snippets")) ;; peronal snippets
      
(require 'yasnippet)
(yas-global-mode 1)

(provide 'init-yasnippet)
;;; init-yasnippet ends here
