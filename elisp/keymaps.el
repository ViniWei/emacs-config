(global-set-key (kbd "<escape>") 'keyboard-escape-quit)
(global-set-key (kbd "C-x c") (lambda () (interactive) (find-file "~/.emacs.d/init.el")))

(use-package evil
  :init
  (setq evil-want-C-u-scroll t)
  (setq evil-want-keybinding nil)
  (setq evil-undo-system 'undo-redo)

  (defun setup-personal-leader-key () 
    (define-prefix-command 'my-leader-map)
    (keymap-set evil-motion-state-map "SPC" 'my-leader-map)
    (keymap-set evil-normal-state-map "SPC" 'my-leader-map))

  :config
  (setup-personal-leader-key)

  (evil-define-key nil my-leader-map
    "bl" 'switch-to-buffer
    "br" 'revert-buffer
    "bk" 'kill-buffer)

  (evil-define-key '(insert visual) 'global
    (kbd "C-c") 'evil-normal-state)

  (evil-define-key '(insert visual normal motion) 'global
    (kbd "C-e") 'find-file)

  (evil-define-key '(normal motion) dired-mode-map
    (kbd "d") 'dired-create-directory
    (kbd "h") 'dired-up-directory
    (kbd "l") 'dired-find-file)

  (evil-mode 1)
  )
