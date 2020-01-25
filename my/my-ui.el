;; remove tool bar
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))

;; remove scroll bar
(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))

;; remove menu bar
(defun remove-menu-bar (&optional frame)
  (when (fboundp 'menu-bar-mode)
    (menu-bar-mode -1)))
;; make sure menu bar is removed on every new frame
(add-hook 'after-make-frame-functions 'remove-menu-bar)

;; disable blink cursor
(blink-cursor-mode -1)

;; disable startup screen
(setq inhibit-startup-screen t)

;; nice scrolling
(setq scroll-margin 0
      scroll-conservatively 100000
      scroll-preserve-screen-position 1)

;; mode line settings
(line-number-mode t)
(column-number-mode t)
(size-indication-mode t)

;; doom themes
(use-package doom-themes
  :custom
  (doom-themes-enable-bold nil)
  (doom-themes-enable-italic nil)
  :ensure t
  :config
  (load-theme 'doom-vibrant t))

;; show the cursor when moving after big movements in the window
(use-package beacon
  :ensure t
  :config
  (beacon-mode +1))

;; highlight the current line
(use-package hl-line
  :config
  (global-hl-line-mode +1))

;; temporarily highlight changes from yanking, etc
(use-package volatile-highlights
  :ensure t
  :config
  (volatile-highlights-mode +1))

;; set font
(add-to-list 'default-frame-alist
	     '(font . "Inconsolata-15"))

;; set default GUI window size
(add-to-list 'default-frame-alist
	     '(width . 162))
(add-to-list 'default-frame-alist
	     '(height . 45))

(provide 'my-ui)
