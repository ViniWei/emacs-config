(use-package perspective
  :init
  (setq persp-suppress-no-prefix-key-warning t)
  (setq persp-initial-frame-name "1:Main")

  :config
  (define-key perspective-map (kbd "b") 'persp-switch-to-buffer*)
  (define-key perspective-map (kbd "B") 'persp-switch-to-buffer)

  (evil-define-key nil my-leader-map
    "a" perspective-map)

  (persp-mode))
