;; Package control
(require 'package)
(push '("marmalade" . "http://marmalade-repo.org/packages/")
	        package-archives )
(push '("melpa" . "http://melpa.milkbox.net/packages/")
			package-archives )
; list the packages you want
(setq package-list
    '(auto-complete color-theme evil evil-commentary evil-escape evil-leader evil-magit evil-org 
		   evil-surround evil-tutor flycheck helm magit org php-auto-yasnippets
		   php-mode powerline powerline-evil web-mode yasnippet))


; activate all the packages
(package-initialize)

; fetch the list of packages available 
(unless package-archive-contents
  (package-refresh-contents))

; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

;; Import all config files from /config folder
(add-to-list 'load-path (concat user-emacs-directory "config"))


(require 'init-powerline)
(require 'init-evil)
(require 'init-web-mode)
(require 'color-theme-almost-monokai)
;;(require 'init-elpy)
(require 'init-auto-complete)
(require 'init-linum)
(require 'init-org)
;; General stuff
(setq inhibit-startup-message t) ;; Disable splash screen
(tool-bar-mode -1) ;; Disable toolbar
(scroll-bar-mode -1) ;; Disable scrollbars
(setq ns-use-srgb-colorspace nil) ;; Fix sRGB colors

(color-theme-almost-monokai)

;; Only use tabs as indentations
(setq-default indent-tabs-mode t)

;; quiet, please! No dinging!
    (setq visible-bell nil)
    (setq ring-bell-function 'ignore)

;; Some line numbers and shit 
(global-hl-line-mode 1)
(set-face-background 'hl-line "#171819")
(set-cursor-color "White")
;; Keybindings
(setq mac-option-key-is-meta t) ;; Only use left alt as meta key
(setq mac-right-option-modifier nil)

;;(global-set-key (kbd "C-p") 'helm-find-files)
(define-key evil-normal-state-map "\C-p" 'helm-find-files)

;; Magit
(require 'magit)
(global-set-key (kbd "C-x g") 'magit-status)













(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("51277c9add74612c7624a276e1ee3c7d89b2f38b1609eed6759965f9d4254369" "e87a2bd5abc8448f8676365692e908b709b93f2d3869c42a4371223aab7d9cf8" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
