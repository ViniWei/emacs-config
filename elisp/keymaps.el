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
  (defun setup-personal-keys ()
    (evil-define-key nil my-leader-map
      (kbd "w") 'save-buffer)

    (evil-define-key nil my-leader-map
      (kbd "c!") 'shell-command
      (kbd "c&") 'async-shell-command
      (kbd "cs") 'shell
      (kbd "ce") 'eshell)

    (evil-define-key '(normal motion) dired-mode-map
      (kbd "d") 'dired-create-directory
      (kbd "h") 'dired-up-directory
      (kbd "l") 'dired-find-file)

    (evil-define-key nil my-leader-map
      "be" 'eval-buffer
      "bs" 'switch-to-buffer
      "br" 'revert-buffer
      "bk" 'kill-buffer
      "bp" 'previous-buffer
      "bn" 'next-buffer

      "p" project-prefix-map)

    (evil-define-key '(normal motion insert emacs) 'global (kbd "C-s") 'project-find-file)

    (evil-define-key '(insert visual) 'global
      (kbd "C-c") 'evil-normal-state)

    (evil-define-key '(normal motion) 'global
      (kbd "C-q") 'evil-visual-block)

    (evil-define-key '(normal motion) 'global
      (kbd "C-u") (lambda () (interactive) (evil-scroll-up nil) (recenter))
      (kbd "C-d") (lambda () (interactive) (evil-scroll-down nil) (recenter)))

    (evil-define-key 'normal 'global
      (kbd "SPC o") (lambda () (interactive) (evil-open-below 1) (evil-normal-state))
      (kbd "SPC O") (lambda () (interactive) (evil-open-above 1) (evil-normal-state))) 

    (evil-define-key '(insert visual normal motion) 'global
      (kbd "C-;") 'execute-extended-command
      (kbd "C-f") 'find-file
      (kbd "C-e") 'dired-jump)

    (evil-define-key '(normal motion) 'global
      (kbd "C-w r") 'winner-undo
      (kbd "C-w f") 'delete-other-windows)
    )

  (setup-personal-keys)
  (evil-mode 1))

(use-package evil-collection
  :after evil
  :config
  (setq evil-collection-key-blacklist '("SPC"))
  (evil-collection-init)
  (add-hook 'evil-collection-setup-hook
    (lambda (&rest _)
    (setup-personal-keys)))
  )
