(add-to-list 'load-path (expand-file-name "skewer-mode" site-lisp-dir))
(require 'setup-emacs-http-server)
(require 'skewer-mode)

(add-hook 'js2-mode-hook 'skewer-mode)
(add-hook 'css-mode-hook 'skewer-css-mode)
(add-hook 'html-mode-hook 'skewer-html-mode)

(provide 'setup-skewer-mode)
