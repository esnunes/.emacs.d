(use-package inf-ruby
  :ensure t
  :config
  (add-hook 'enh-ruby-mode-hook 'inf-ruby-minor-mode))

(use-package enh-ruby-mode
  :ensure t
  :config
  (setq enh-ruby-deep-indent-construct nil)
  (add-hook 'enh-ruby-mode-hook 'subword-mode)
  (add-to-list 'auto-mode-alist
               '("\\(?:\\.rb\\|ru\\|rake\\|thor\\|jbuilder\\|gemspec\\|podspec\\|/\\(?:Gem\\|Rake\\|Cap\\|Thor\\|Vagrant\\|Guard\\|Pod\\)file\\)\\'" . enh-ruby-mode)))

(provide 'my-ruby)
