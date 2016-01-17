;;; init-web.el -- My web config
;;
;;; Commentary:
;;  Config file for web development stuff.
;;
;;; Code:

(defun enable-web-mode()
  (interactive)
  ;; enable web mode
  (web-mode)

  ;; make these variables local
  (make-local-variable 'web-mode-code-indent-offset)
  (make-local-variable 'web-mode-markup-indent-offset)
  (make-local-variable 'web-mode-css-indent-offset)

  ;; set indentation, can set different indentation level for different code type
  (setq-default indent-tabs-mode nil)
  (setq web-mode-code-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-markup-indent-offset 2))
;; Enable web mode for all php files
;;(add-to-list 'auto-mode-alist '("\\.php$" . enable-web-mode))
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . enable-web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . enable-web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . enable-web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . enable-web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . enable-web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . enable-web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . enable-web-mode))
(add-to-list 'auto-mode-alist '("\\.html\\'" . enable-web-mode))
(provide 'init-web-mode)
;;; init-web.el ends here
