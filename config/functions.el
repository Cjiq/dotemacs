;;; functions.el -- My Emacs helpful functions
;-*-Emacs-Lisp-*-

;;; Commentary:
;;
;;  Nothing more to be said.
;;
;;; Code:

(defun switch-to-previous-buffer ()
  "Switch to previously open buffer.
Repeated invocations toggle between the two most recently open buffers."
  (interactive)
  (switch-to-buffer (other-buffer (current-buffer) 1)))

(defun rename-file-and-buffer (new-name)
  "Renames both current buffer and file it's visiting to NEW-NAME."
  (interactive "sNew name: ")
  (let ((name (buffer-name))
        (filename (buffer-file-name)))
    (if (not filename)
        (message "Buffer '%s' is not visiting a file!" name)
      (if (get-buffer new-name)
          (message "A buffer named '%s' already exists!" new-name)
        (progn
          (rename-file name new-name 1)
          (rename-buffer new-name)
          (set-visited-file-name new-name)
          (set-buffer-modified-p nil))))))
(defun indent-buffer ()
  "Indent an entire buffer using the default intenting scheme."
  (interactive)
  (point-to-register 'o)
  (delete-trailing-whitespace)
  (indent-region (point-min) (point-max) nil)
  (untabify (point-min) (point-max))
  (jump-to-register 'o))

(defun sudo-save ()
  "Save file with sudo permissions."
  (interactive)
  (if (not buffer-file-name)
      (write-file (concat "/sudo:root@localhost:" (ido-read-file-name "File:")))
    (write-file (concat "/sudo:root@localhost:" buffer-file-name))))

(defun ssh-connect (ssh_user ssh_host ssh_loc)
  "Find file over ssh.  E.g. SSH_USER@SSH_HOST:SSH_LOC."
  (interactive
   (list
    (read-string "User: ")
    (read-string "Host (example.tk#port): ")
    (read-string "File: ")))
  (find-file (concat "/ssh:" ssh_user "@" ssh_host ":" ssh_loc)))

(defun ssh-connect-cjiq ()
  "Connect to cjiq.tk as cjiq via ssh."
  (interactive)
  (find-file "/ssh:cjiq@cjiq.tk#35:welcome.txt"))

(defun ssh-connect-web ()
  "Connect to cjiq.tk as web via ssh."
  (interactive)
  (find-file "/ssh:web@cjiq.tk#35:welcome.txt"))

(defun ssh-connect-sb ()
  "Connect to cjiq.tk sb as cjiq via ssh."
  (interactive)
  (find-file "/ssh:cjiq@cjiq.tk#35|ssh:cjiq@192.168.1.149:python/sb-log.py"))

(defun increment-number-decimal (&optional arg)
  "Increment the number forward from point by 'ARG'."
  (interactive "p*")
  (save-excursion
    (save-match-data
      (let (inc-by field-width answer)
        (setq inc-by (if arg arg 1))
        (skip-chars-backward "0123456789")
        (when (re-search-forward "[0-9]+" nil t)
          (setq field-width (- (match-end 0) (match-beginning 0)))
          (setq answer (+ (string-to-number (match-string 0) 10) inc-by))
          (when (< answer 0)
            (setq answer (+ (expt 10 field-width) answer)))
          (replace-match (format (concat "%0" (int-to-string field-width) "d")
                                 answer)))))))

(defun decrement-number-decimal (&optional arg)
  "Decrement the number forward from point by 'ARG'."
  (interactive "p*")
  (increment-number-decimal (if arg (- arg) -1)))

(defun insert-current-date ()
  "Insert current date."
  (interactive)
    (shell-command-to-string "echo -n $(date +%Y-%m-%d)"))
(defun insert-directory-name ()
  "Insert the current directory name only."
  (interactive)
  (file-name-nondirectory
           (directory-file-name default-directory)))

(provide 'functions)
;;; functions.el ends here
