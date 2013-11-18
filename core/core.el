(message "core.el")

(setq make-backup-files nil)
; disable backup
(setq backup-inhibited t)
; disable auto save
(setq auto-save-default nil)

(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 100)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

(require 'expand-region)

(projectile-global-mode)

(require 'nodejs-repl)

(global-diff-hl-mode)

(helm-mode)

(provide 'core)
