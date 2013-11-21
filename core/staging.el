(message "staging.el")

(setq flyspell-issue-welcome-flag nil) ;; fix flyspell problem

(require 'tramp)
(setq tramp-default-method "ssh")


;(require 'helm-config)

(add-to-list 'load-path (expand-file-name "akfish-ac-coffee-409eef0" root-site-lisp-dir))
(require 'ac-coffee)

(provide 'staging)
