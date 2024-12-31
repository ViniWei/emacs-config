(setq inhibit-startup-message t)

(scroll-bar-mode -1) ; Disable visible scrollbar
(tool-bar-mode -1) ; Disable the toolbar
(tooltip-mode -1) ; Disable tooltips
(menu-bar-mode -1) ; Disable the menu bar

(setq visible-bell t)

(setq scroll-margin 19)

(setq scroll-step            1
   scroll-conservatively  101)
(setq auto-window-vscroll nil)

(remove-hook 'find-file-hook 'vc-find-file-hook)
(remove-hook 'find-file-hook 'vc-refresh-state)

(add-to-list 'default-frame-alist '(fullscreen . maximized))

;Keep my folders clean
(setq backup-directory-alist `(("." . ,(expand-file-name "tmp/backups/" user-emacs-directory))))

(setq auto-save-list-file-prefix (expand-file-name "tmp/auto-saves/sessions/" user-emacs-directory)
      auto-save-file-name-transforms `((".*" ,(expand-file-name "tmp/auto-saves/" user-emacs-directory) t)))

(setq projectile-known-projects-file (expand-file-name "tmp/projectile-bookmarks.eld" user-emacs-directory)
      lsp-session-file (expand-file-name "tmp/.lsp-session-v1" user-emacs-directory))

; default hooks
(setq display-line-numbers-type 'relative) 
(add-hook 'prog-mode-hook #'display-line-numbers-mode)
(add-hook 'prog-mode-hook #'toggle-truncate-lines)
(add-hook 'dired-mode-hook #'dired-hide-details-mode)
(add-hook 'eshell-mode-hook (lambda () (setenv "TERM" "xterm-256color")))
