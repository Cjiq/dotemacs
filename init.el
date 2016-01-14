;; Package control
(require 'package)
(push '("marmalade" . "http://marmalade-repo.org/packages/")
	        package-archives )
(push '("melpa" . "http://melpa.milkbox.net/packages/")
			package-archives )
(defun slurp (f)
         (with-temp-buffer
           (insert-file-contents f)
           (buffer-substring-no-properties
            (point-min)
            (point-max))))

; list the packages you want
(setq package-list '())
;; Loop through package-list.el and add all packages
;; to package-list var, one package per line.
(dolist (el (split-string
		(slurp "~/.emacs.d/config/package-list.el") "\n" t))
(push (intern el) package-list))

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

;; Magit
(require 'magit)
(global-set-key (kbd "C-x g") 'magit-status)

(require 'init-powerline)
(require 'init-evil)
(require 'init-web-mode)
(require 'color-theme-almost-monokai)
;;(require 'init-elpy)
(require 'init-auto-complete)
(require 'init-linum)
(require 'init-org)
;; (require 'init-arduino-mode)
;; General stuff
(setq inhibit-startup-message t) ;; Disable splash screen
(tool-bar-mode -1) ;; Disable toolbar
(menu-bar-mode -1) ;; Disable menubar
(scroll-bar-mode -1) ;; Disable scrollbars
(setq ns-use-srgb-colorspace nil) ;; Fix sRGB colors

(color-theme-almost-monokai) ;; use this color theme

(setq default-frame-alist '((cursor-color . "white"))) ;; use a white cursor

;; Enable paren to show matching braces
(require 'paren)
    (set-face-background 'show-paren-match "#FCE111")
    (set-face-foreground 'show-paren-match "#000")
    (set-face-attribute 'show-paren-match nil :weight 'extra-bold)
(setq show-paren-delay 0)
(show-paren-mode 1)

;; Only use tabs as indentations
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
;; quiet, please! No dinging!
    (setq visible-bell nil)
    (setq ring-bell-function 'ignore)

;; Some line numbers and shit 
(global-hl-line-mode 1)
(set-face-background 'hl-line "#171819")
(set-cursor-color "White")

;; Make is possible to save windows layouts
(require 'desktop)
(setq desktop-path (list "~/emacs-server"))
(desktop-save-mode 1)





;; Keybindings
(setq mac-option-key-is-meta t) ;; Only use left alt as meta key
(setq mac-right-option-modifier nil)

;;(global-set-key (kbd "C-p") 'helm-find-files)
(define-key evil-normal-state-map "\C-p" 'helm-find-files)














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
