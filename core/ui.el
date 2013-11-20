;; ui.el

(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))
(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))
(if (fboundp 'fringe-mode)
    (fringe-mode 4))

(menu-bar-mode -1)
(blink-cursor-mode -1)
(setq inhibit-startup-screen t)
(line-number-mode t)
(global-linum-mode 1)
(column-number-mode t)
(size-indication-mode t)
(fset 'yes-or-no-p 'y-or-n-p)

(require 'powerline )
(powerline-default-theme)
;; ??
(setq
 ;; powerline-color1 "Red"
 ;; powerline-color2 "Yellow"
 powerline-active1 "Red"
 powerline-active2 "Yellow"
 powerline-inactive1 "Blue"
 powerline-inactive2 "Orange"
)

(set-face-foreground 'mode-line "grey90")
(set-face-background 'mode-line "grey20")


(global-hl-line-mode +1)
(set-face-background hl-line-face "Gray10")

;; location
(setq initial-frame-alist
      '(
        (top      . 5)
        (left     . 0)
        (height   . 60)
        (width    . 90)
        )
      )

;; more useful frame title, that show either a file or a
;; buffer name (if the buffer isn't visiting a file)
(setq frame-title-format
      '("" invocation-name " fhwrdh - " (:eval (if (buffer-file-name)
                                            (abbreviate-file-name (buffer-file-name))
                                          "%b"))))

;; anzu shows the number of search matches in the modeline
(global-anzu-mode +1)

(provide 'ui)
