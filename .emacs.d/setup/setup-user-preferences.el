(delete-selection-mode 1)
(scroll-bar-mode -1)
(setq truncate-lines t)



(defalias 'yes-or-no-p 'y-or-n-p)
(setq backup-directory-alist `(("." . "~/.backup")))

(provide 'setup-user-preferences)
