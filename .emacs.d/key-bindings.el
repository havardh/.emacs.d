; Navigate windows
(global-set-key (kbd "<s-right>") 'windmove-right)
(global-set-key (kbd "<s-left>") 'windmove-left)
(global-set-key (kbd "<s-up>") 'windmove-up)
(global-set-key (kbd "<s-down>") 'windmove-down)

; Gtags
(global-unset-key (kbd "C-t"))
(global-set-key (kbd "C-t t") 'gtags-find-tag-from-here)
(global-set-key (kbd "C-t b") 'gtags-pop-stack)

(provide 'key-bindings)
