;; init.el
(message "init.el")

(defvar root-dir (file-name-directory load-file-name)
  "The root directory of the config.")
(defvar root-core-dir (expand-file-name "core" root-dir)
  "The core subdirectory")
(defvar root-site-lisp-dir (expand-file-name "site-lisp" root-dir)
  "The site-lisp subdirectory")
(defvar root-savefile-dir (expand-file-name "savefile" root-dir)
  "Stores the generated save/history files.")
(unless (file-exists-p root-savefile-dir)
  (make-directory root-savefile-dir))

(add-to-list 'load-path root-core-dir)
(add-to-list 'load-path (expand-file-name "akfish-ac-coffee-409eef0" root-site-lisp-dir))
(require 'ac-coffee)

(require 'packages)
(require 'defuns)
(require 'core)
(require 'ui)
(require 'global-keys)
(require 'editor)
(require 'osx)

;; Keep emacs Custom-settings in separate file
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)

(if (display-graphic-p)
    (progn
    ;; if graphic
      (message "graphics!!!!!")
      (set-face-attribute 'default nil :font "Monaco 10")
      (load-theme 'twilight t)
      )
    ;; else (optional)
  (message "no graphics!!!!!!!!!!!!!!!!!!!!")
    )

(setq flyspell-issue-welcome-flag nil) ;; fix flyspell problem

(require 'tramp)
(setq tramp-default-method "ssh")

;(require 'helm-config)

(setq default-directory "~/")
(cd "~")


;; Emacs server
(require 'server)
(unless (server-running-p)
  (server-start))
