(use-package magit
  :config

  (add-hook 'magit-status-mode-hook
    (lambda () (keymap-unset magit-status-mode-map "SPC")))

  (evil-define-key nil my-leader-map
    "gm" 'magit
    "gd" 'magit-branch-delete
    "gc" 'magit-branch-or-checkout))
