;; don't add crap to packages (e.g. during errors triggered when
;; batch-installing our packages)
(setq make-backup-files nil)

(require 'package)
(setq package-archives '(("melpa" . "http://melpa.org/packages/")))
;; prevent package.el from adding `(package-initialize)` to the top of
;; `init.el`
(setq package--init-file-ensured t)
(package-initialize)

(defun init:add-pkgs (pkglist)
  (unless package-archive-contents
    (package-refresh-contents))

  (dolist (package pkglist)
    (unless (package-installed-p package)
      (package-install package))))


;; just a list of packages. in theory we might have several different
;; lists split by subject, and combine them elsewhere
(defvar init:pkg-list-0 '(ace-window
                          dockerfile-mode))

;; the list of packages to be installed by the batch install script
(defvar init:batch-pkg-list init:pkg-list-0)

(defun init:batch-add-pkgs ()
  (init:add-pkgs init:batch-pkg-list))

;; Shut up compile saves
(setq compilation-ask-about-save nil)
;; Don't save *anything*
(setq compilation-save-buffers-predicate '(lambda () nil))
