(use-package ivy
  :init
  (setq ivy-height 30)
  (ivy-mode))

(use-package ivy-posframe
  :config
  (setq ivy-posframe-display-functions-alist '((t . ivy-posframe-display-at-frame-center)))
  (ivy-posframe-mode 1))
