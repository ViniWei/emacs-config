(setq custom-file "~/.emacs.d/custom.el")
(load custom-file 'noerror)

(load-file "~/.emacs.d/elisp/options.el")

(winner-mode)

(require 'package)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
			("elpa" . "https://elpa.gnu.org/packages/")))

(package-initialize)
(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

(use-package ivy
  :init
  (ivy-mode))

(use-package perspective)

(load-file "~/.emacs.d/elisp/visual.el")
(load-file "~/.emacs.d/elisp/keymaps.el")
