(defun my-setup-tide-mode ()
  "Setup function for tide."
  (interactive)
  (tide-setup)
  (flycheck-mode +1)
  (setq flycheck-check-syntax-automatically '(save mode-enabled))
  (eldoc-mode +1)
  (tide-hl-identifier-mode +1)
  (company-mode +1))

(defun my-setup-web-mode ()
  "Setup function for web."
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-code-indent-offset 2))

(use-package tide
  :ensure t
  :config
  (defvar company-tooltip-align-annotations)
  (setq company-tooltip-align-annotations t)
  (add-hook 'js-mode-hook #'my-setup-tide-mode)
  (add-hook 'before-save-hook 'tide-format-before-save))

(use-package web-mode
  :ensure t
  :mode (("\\.html?\\'" . web-mode)
         ("\\.tsx\\'" . web-mode)
         ("\\.jsx\\'" . web-mode))
  :config
  (setq web-mode-markup-indent-offset 2)
  (add-hook 'web-mode-hook 'my-setup-web-mode)
  (add-hook 'web-mode-hook #'my-setup-tide-mode)
  (flycheck-add-mode 'typescript-tslint 'web-mode))

(provide 'my-js)
