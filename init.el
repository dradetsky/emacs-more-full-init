(defvar init:load-start (current-time))

(setq init:this-file-name (or load-file-name (buffer-file-name)))
(setq init:this-file-dir (file-name-directory init:this-file-name))

(setq user-emacs-directory init:this-file-dir)
(setq user-init-file init:this-file-name)
(setq user-local-lisp-dir (concat user-emacs-directory "lisp"))
(add-to-list 'load-path user-local-lisp-dir)

(load "pkgs")

(setq custom-file (expand-file-name "custom.el" init:this-file-dir))
(load custom-file 'noerror)

(defvar init:load-end (current-time))
