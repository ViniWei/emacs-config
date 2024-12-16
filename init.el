; options
(setq inhibit-startup-message t)

(scroll-bar-mode -1) ; Disable visible scrollbar
(tool-bar-mode -1) ; Disable the toolbar
(tooltip-mode -1) ; Disable tooltips
(menu-bar-mode -1) ; Disable the menu bar

(setq visible-bell t)

;(set-face-attribute 'default nil :font "Arial" :height 131)


(setq scroll-margin 19)

(setq scroll-step            1
   scroll-conservatively  101)

(global-set-key (kbd "<escape>") 'keyboard-escape-quit)
(global-set-key (kbd "C-x c") (lambda () (interactive) (find-file "~/.emacs.d/init.el")))

; default hooks
(setq display-line-numbers-type 'relative) 
(add-hook 'prog-mode-hook #'display-line-numbers-mode)
(add-hook 'prog-mode-hook #'toggle-truncate-lines)
(add-hook 'dired-mode-hook #'dired-hide-details-mode)
;

(require 'package)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
			("elpa" . "https://elpa.gnu.org/packages/")))

(package-initialize)
(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)


(use-package doom-modeline
  :init (doom-modeline-mode 1))

(use-package doom-themes
  :init
  (load-theme 'doom-ayu-dark t))

(use-package ivy
  :init
  (ivy-mode))

(use-package perspective)

(load-file "~/.emacs.d/elisp/keymaps.el")
