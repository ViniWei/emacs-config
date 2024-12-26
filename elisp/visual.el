(use-package doom-themes
  :init
  (load-theme 'doom-ayu-dark t))

(use-package all-the-icons
  :if (display-graphic-p))

(use-package doom-modeline
  :init (doom-modeline-mode 1))

(use-package nerd-icons-dired
  :hook
  (dired-mode . nerd-icons-dired-mode))
