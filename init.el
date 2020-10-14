(setq 3rd-party-dir (expand-file-name "3rd-party" user-emacs-directory))

(setq load-prefer-newer t)

;; add 3rd-party directory to load-path
(add-to-list 'load-path 3rd-party-dir)

;; temporarily disable garbage collector, then reset it later by
;; enabling `gcmh-mode`.
(setq gc-cons-threshold most-positive-fixnum)
;; increase the garbage collector threshold
;; (setq gc-cons-threshold (* 1024 1024 128))
(setq read-process-output-max (* 1024 1024))

(require 'org)
(org-babel-load-file (expand-file-name "esnunes.config.org" user-emacs-directory))

;; config changes made through the customize UI will be stored here
(setq custom-file (expand-file-name "esnunes.custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))
