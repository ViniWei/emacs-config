(use-package harpoon
  :config
  (evil-define-key nil my-leader-map
    (kbd "hm") 'harpoon-toggle-file
    (kbd "ha") 'harpoon-add-file
    (kbd "hc") 'harpoon-clear

    (kbd "1") 'harpoon-go-to-1
    (kbd "2") 'harpoon-go-to-2
    (kbd "3") 'harpoon-go-to-3
    (kbd "4") 'harpoon-go-to-4
    (kbd "5") 'harpoon-go-to-5))
