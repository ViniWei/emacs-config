(use-package zig-mode)

(use-package lsp-mode
  :init
  (setq lsp-keymap-prefix "C-l")
  (setq lsp-headerline-breadcrumb-enable nil)
  :config
  (add-hook 'zig-mode-hook 'lsp)

  (evil-define-key nil my-leader-map
    (kbd "fP") 'flymake-show-project-diagnostics
    (kbd "fb") 'flymake-show-buffer-diagnostics
    (kbd "fp") 'flymake-goto-prev-error
    (kbd "fn") 'flymake-goto-next-error))

(use-package lsp-ui
  :config
  ;(lsp-ui-sideline-mode)
  (evil-define-key 'normal 'global
    (kbd "K") 'lsp-ui-doc-toggle))


(use-package company
  :config
  (setq company-idle-delay 0.1
	company-minimum-prefix-length 1
	lsp-enable-symbol-highlighting nil))
