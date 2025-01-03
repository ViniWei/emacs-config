(use-package flycheck
  :config
  (evil-define-key nil my-leader-map
    (kbd "f") flycheck-command-map)

  (set-face-underline 'flycheck-warning nil)
  (set-face-underline 'flycheck-info nil))

(use-package dtrt-indent
  :config
  (dtrt-indent-global-mode t)
  (dtrt-indent-adapt))

(use-package zig-mode
  :config
  (setq zig-format-on-save nil))

(use-package web-mode
  :mode
  (("\\.phtml\\'" . web-mode)
   ("\\.html\\'" . web-mode)
   ("\\.php\\'" . web-mode)
   ("\\.vue\\'" . web-mode)
   ("\\.tpl\\'" . web-mode)
   ("\\.[agj]sp\\'" . web-mode)
   ("\\.as[cp]x\\'" . web-mode)
   ("\\.erb\\'" . web-mode)
   ("\\.mustache\\'" . web-mode)
   ("\\.djhtml\\'" . web-mode)))

(use-package lsp-mode
  :init
  (setq lsp-keymap-prefix "C-l")
  (setq lsp-headerline-breadcrumb-enable nil)
  :config

  (dolist (item '(zig-mode-hook js-mode-hook web-mode-hook))
    (add-hook item 'lsp)
    (add-hook item 'flycheck-mode)))

(use-package lsp-ui
  :config
  (setq lsp-ui-doc-show-with-mouse nil)
  (setq lsp-ui-doc-position 'at-point)

  (evil-define-key nil my-leader-map
    (kbd "k") 'lsp-ui-doc-glance
    (kbd "K") 'lsp-ui-doc-focus-frame)

  (evil-define-key '(normal) lsp-ui-doc-frame-mode-map
    (kbd "q") 'lsp-ui-doc-hide))

(use-package company
  :config
  (setq company-idle-delay 0.1
	company-minimum-prefix-length 1
	lsp-enable-symbol-highlighting nil))
