(setq my-dir (expand-file-name "my" user-emacs-directory))

(setq load-prefer-newer t)

;; add my directory to load-path
(add-to-list 'load-path my-dir)

(require 'my-packages)
(require 'my-core)
(require 'my-editor)
(require 'my-ui)

(require 'my-markdown)

;; config changes made through the customize UI will be stored here
(setq custom-file (expand-file-name "my-custom.el" my-dir))
(when (file-exists-p custom-file)
  (load custom-file))
