;; code goes here

(require 'evil)
(evil-mode 1)

;; Key-bindings for evil
(define-key evil-normal-state-map (kbd "C-h") 'evil-window-left)
(define-key evil-normal-state-map (kbd "C-j") 'evil-window-down)
(define-key evil-normal-state-map (kbd "C-k") 'evil-window-up)
(define-key evil-normal-state-map (kbd "C-l") 'evil-window-right)

;; Evil-surround 
(require 'evil-surround)
(global-evil-surround-mode 1)

;; Evil-commentary
(require 'evil-commentary)
(evil-commentary-mode)

;; Evil-escape
(evil-escape-mode)

(provide 'init-evil)
