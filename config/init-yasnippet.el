;; code goes here

(add-to-list 'load-path
              "~/.emacs.d/plugins/yasnippet")
(setq yas-snippet-dirs
      '("~/.emacs.d/snippets") ;; peronal snippets
      )
(require 'yasnippet)
(yas-global-mode 1)

(require 'php-auto-yasnippets)
(setq php-auto-yasnippet-php-program "~/.emacs.d/elpa/php-auto-yasnippets-20141128.1411/Create-PHP-YASnippet.php")
(define-key php-mode-map (kbd "C-c C-y") 'yas/create-php-snippet)
(payas/ac-setup)

(provide 'init-yasnippet)

;; init-yasnippet ends here
