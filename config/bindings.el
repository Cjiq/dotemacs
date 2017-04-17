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
(define-key evil-insert-state-map "\C-y" 'yas-expand)

;; evil-leader bindings
(evil-leader/set-key
  "co" 'org-cycle-list-bullet
  "di" 'decrement-number-decimal
  "fof" 'ff-find-other-file
  "gff" 'gtags-find-file
  "gft" 'gtags-find-tag
  "gre" 'gtags-reindex
  "ib" 'indent-buffer
  "ii" 'increment-number-decimal
  "lf" 'load-file
  "nH" 'neotree-hidden-file-toggle
  "nd" 'neotree-delete-node
  "nn" 'neotree-create-node
  "o" 'switch-to-previous-buffer
  "rb" 'revert-buffer
  "rf" 'rename-file-and-buffer
  "sl" 'sort-lines
  "ss" 'sudo-save
  "wm" 'enable-web-mode)
;; other bindings
(global-set-key "\M-`" 'other-frame) ;; Cycle through frames with Meta-`
(provide 'bindings)
;;; bindings.el ends here
