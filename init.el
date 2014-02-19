;; init.el
(message "init.el")

(defvar root-dir (file-name-directory load-file-name)
  "The root directory of the config.")
(defvar root-core-dir (expand-file-name "core" root-dir)
  "The core subdirectory")
(defvar root-site-lisp-dir (expand-file-name "site-lisp" root-dir)
  "The site-lisp subdirectory")
(defvar root-setup-dir (expand-file-name "setup" root-dir)
  "The setup subdirectory")
(defvar root-savefile-dir (expand-file-name "savefile" root-dir)
  "Stores the generated save/history files.")
(unless (file-exists-p root-savefile-dir)
  (make-directory root-savefile-dir))

(add-to-list 'load-path root-core-dir)
(add-to-list 'load-path root-site-lisp-dir)
(add-to-list 'load-path root-setup-dir)

(require 'packages)
(require 'defuns)
(require 'core)
(require 'ui)
(require 'global-keys)
(require 'editor)
(require 'osx)
(require 'staging)

;; Load all elisp files in setup directory
(if (file-exists-p root-setup-dir)
    (dolist (file (directory-files root-setup-dir t "\\.el$"))
      (load file)
      )
  )

;; Keep emacs Custom-settings in separate file
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)

;(setq default-directory "~/")
;(cd "~")

;; Emacs server
(require 'server)
(unless (server-running-p)
  (server-start))
