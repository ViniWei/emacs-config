(global-set-key (kbd "<escape>") 'keyboard-escape-quit)
(global-set-key (kbd "C-x c") (lambda () (interactive) (find-file "~/.emacs.d/init.el")))

(use-package evil
  :init
  (setq evil-want-C-u-scroll t)
  (setq evil-want-keybinding nil)
  :config
  (evil-mode 1))

(use-package evil-collection
  :after
  evil
  :config
  (evil-collection-init))

(use-package general
  :config
  (general-define-key
   :states 'insert
   "C-c" 'evil-normal-state)

  (general-define-key
   :keymaps 'override
   "C-j" 'windmove-down
   "C-k" 'windmove-up
   "C-h" 'windmove-left
   "C-l" 'windmove-right)
  
  (general-define-key
   :states '(motion emacs insert)
   "C-e" 'find-file
   "C-;" 'execute-extended-command)
 
  (general-create-definer leader-key
     :prefix "SPC")

  (leader-key
    :states 'normal
    "w" 'save-buffer)

  (leader-key
    :states 'motion
    "" nil
    "bl"  'ivy-switch-buffer
    "br"  'revert-buffer
    "be"  'eval-buffer
    "bk"  'kill-buffer
    "bn"  'next-buffer
    "bp"  'previous-buffer))
