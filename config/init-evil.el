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

;; Evil-serach
(setq evil-search-module 'evil-search)

;; Evil-commentary
(require 'evil-commentary)
(evil-commentary-mode)

;; Evil-escape
(setq-default evil-escape-key-sequence ",,")
(evil-escape-mode)

;; Evil-org-mode
(require 'evil-org)

;; Evil-leader
(require 'evil-leader)
(global-evil-leader-mode t)
(evil-leader/set-leader ",")

;; Evil-magit
(require 'evil-magit)

;; Evil-visualstar
(require 'evil-visualstar)
(global-evil-visualstar-mode t)
(setq evil-visualstar/persistent t) 

;; add neotree support
 (add-hook 'neotree-mode-hook
            (lambda ()
              (define-key evil-normal-state-local-map (kbd "TAB") 'neotree-enter)
              (define-key evil-normal-state-local-map (kbd "SPC") 'neotree-enter)
              (define-key evil-normal-state-local-map (kbd "q") 'neotree-hide)
              (define-key evil-normal-state-local-map (kbd "RET") 'neotree-enter)))

(provide 'init-evil)
