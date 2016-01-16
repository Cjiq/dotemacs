;;; init.el -- My Emacs configuration
;-*-Emacs-Lisp-*-

;;; Commentary:
;;
;; This is my official Emacs config.  It makes use of evil to add some of the
;; smart fuctionality that you get from vim. 
;; Credits to https://github.com/aaronbieber and https://github.com/bling
;; for insperation and for providing awesome config examples.
;;
;;; Code:

;; Package control
(require 'package)
(push '("marmalade" . "http://marmalade-repo.org/packages/")
  package-archives )
(push '("melpa" . "http://melpa.milkbox.net/packages/")
	package-archives )

; Function to return all lines in file
(defun slurp (f)
  (with-temp-buffer
    (insert-file-contents f)
    (buffer-substring-no-properties
      (point-min)
      (point-max))))

; list the packages you want
(defvar package-list '())
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

(require 'bindings)
(require 'color-theme-almost-monokai)
(require 'functions)
(require 'init-auto-complete)
(require 'init-c-modes)
(require 'init-evil)
(require 'init-flycheck)
(require 'init-gtags)
(require 'init-linum)
(require 'init-org)
(require 'init-powerline)
(require 'init-web-mode)
;;(require 'init-elpy)
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
(setq show-paren-delay 0.2)
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

;; ;; Make is possible to save windows layouts
;; (require 'desktop)
;; (setq desktop-path (list "~/emacs-server"))
;; (desktop-save-mode 1)

;; neotree
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
(setq neo-smart-open t)
(setq neo-theme 'ascii)

;; Rainbow colors
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
(add-hook 'prog-mode-hook #'rainbow-mode)

(provide 'init)
;;; init ends here
