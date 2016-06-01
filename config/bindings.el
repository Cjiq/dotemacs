;;; bindings.el -- My Emacs keybindings
;-*-Emacs-Lisp-*-

;;; Commentary:
;;
;;  Here are my keybindings.
;;
;;; Code:

;; OSX specific bindings
(setq mac-option-key-is-meta t) ;; Only use left alt as meta key
(setq mac-right-option-modifier nil)

(define-key evil-normal-state-map "\C-p" 'helm-for-files)

;; evil-leader bindings
(evil-leader/set-key
  "co" 'org-cycle-list-bullet
  "gff" 'gtags-find-file
  "gft" 'gtags-find-tag
  "gre" 'gtags-reindex
  "ib" 'indent-buffer
  "lf" 'load-file
  "nH" 'neotree-hidden-file-toggle
  "nd" 'neotree-delete-node
  "nn" 'neotree-create-node
  "o" 'switch-to-previous-buffer
  "rf" 'rename-file-and-buffer
  "sl" 'sort-lines
  "ii" 'increment-number-decimal
  "di" 'decrement-number-decimal
  "ss" 'sudo-save
  "wm" 'enable-web-mode)
;; other bindings
(global-set-key "\M-`" 'other-frame) ;; Cycle through frames with Meta-`
(provide 'bindings)
;;; bindings.el ends here
