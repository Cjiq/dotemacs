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
  "o" 'switch-to-previous-buffer
  "nH" 'neotree-hidden-file-toggle
  "nn" 'neotree-create-node
  "nd" 'neotree-delete-node
  "sl" 'sort-lines
  "rf" 'rename-file-and-buffer
  "lf" 'load-file
  "gre" 'gtags-reindex
  "co" 'org-cycle-list-bullet
  "gft" 'gtags-find-tag
  "gff" 'gtags-find-file
  "wm" 'enable-web-mode)
;; other bindings
(global-set-key "\M-`" 'other-frame) ;; Cycle through frames with Meta-`
(provide 'bindings)
;;; bindings.el ends here
