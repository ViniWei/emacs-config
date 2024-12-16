(setq inhibit-startup-message t)

(scroll-bar-mode -1) ; Disable visible scrollbar
(tool-bar-mode -1) ; Disable the toolbar
(tooltip-mode -1) ; Disable tooltips
(menu-bar-mode -1) ; Disable the menu bar

(setq visible-bell t)

(setq scroll-margin 19)

(setq scroll-step            1
   scroll-conservatively  101)

; default hooks
(setq display-line-numbers-type 'relative) 
(add-hook 'prog-mode-hook #'display-line-numbers-mode)
(add-hook 'prog-mode-hook #'toggle-truncate-lines)
(add-hook 'dired-mode-hook #'dired-hide-details-mode)
