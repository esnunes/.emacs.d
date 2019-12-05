(use-package markdown-mode
  :ensure t
  :mode (("\\.md\\'" . gfm-mode)
         ("\\.markdown\\'" . gfm-mode))
  :init
  ;; enable auto-fill
  ;; (add-hook 'markdown-mode-hook 'auto-fill-mode)
  :config
  (set-face-attribute 'markdown-code-face nil :inherit nil)
  (setq markdown-fontify-code-blocks-natively t))

(provide 'my-markdown)
