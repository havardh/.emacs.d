(add-to-list 'load-path (expand-file-name "site-lisp/autocomplete" user-emacs-directory))

(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories (expand-file-name "site-lisp/autocomplete/ac-dict" user-emacs-directory))
(ac-config-default)

(provide 'setup-autocomplete)
