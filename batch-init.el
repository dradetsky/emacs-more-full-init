;; batch-init.el
;;
;; you can load this file when you want to run this emacs in batch
;; mode, as in
;;
;; emacs -Q --batch -l batch-init.el ...
;;
;; for example, in a script to install all the elpa packages required
;; by the rest of your config.

(setq init:this-file-name (or load-file-name (buffer-file-name)))
(setq init:this-file-dir (file-name-directory init:this-file-name))
(setq user-emacs-directory init:this-file-dir)
