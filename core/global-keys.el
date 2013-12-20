;; I don't need to kill emacs that easily
;; the mnemonic is C-x REALLY QUIT
(global-set-key (kbd "C-x r q") 'save-buffers-kill-terminal)
(global-set-key (kbd "C-x C-c") 'delete-frame)

;; Completion that uses many different methods to find options.
(global-set-key (kbd "C-.") 'hippie-expand-no-case-fold)
(global-set-key (kbd "C-:") 'hippie-expand-lines)
(global-set-key (kbd "C-,") 'completion-at-point)

(require 'misc)
(global-set-key (kbd "s-.") 'copy-from-above-command)

(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-x M-g") 'browse-url-at-point)

;; If you want to be able to M-x without meta
(global-set-key (kbd "C-x C-m") 'smex)

;; ibuffer is miles better than list-buffer
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; copy line when region not selected
(global-set-key (kbd "C-c C-d") 'copy-line-or-region)
(global-set-key (kbd "C-c C-<return>") 'delete-blank-lines)

(global-set-key (kbd "C-=") 'er/expand-region)

;; vim's ci and co commands
(global-set-key (kbd "M-I") 'change-inner)
(global-set-key (kbd "M-O") 'change-outer)
(global-set-key (kbd "s-i") 'copy-inner)
(global-set-key (kbd "s-o") 'copy-outer)

;; Jump to a definition in the current file. (This is awesome)
;;(global-set-key (kbd "C-x C-i") 'ido-imenu)
(global-set-key (kbd "C-c h") 'helm-mini)

;; see defuns.el
(global-set-key ">" 'my-indent-region)
(global-set-key "<" 'my-unindent-region)


(global-set-key (kbd "C-x f") 'find-file-in-repository)

(provide 'global-keys)
