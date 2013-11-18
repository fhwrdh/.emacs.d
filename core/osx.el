;; osx.el

;; On OS X Emacs doesn't use the shell PATH if it's not started from
;; the shell. Let's fix that:
;;(prelude-ensure-module-deps '(exec-path-from-shell))
(require 'exec-path-from-shell)
(exec-path-from-shell-initialize)

;; It's all in the Meta
(setq ns-function-modifier 'hyper)


(menu-bar-mode +1)


(provide 'osx)
