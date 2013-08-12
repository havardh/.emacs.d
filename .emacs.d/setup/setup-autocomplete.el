(add-to-list 'load-path (expand-file-name "site-lisp/autocomplete" user-emacs-directory))
;(defalias 'yas/current-snippet-table 'yas--get-snippet-tables)
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories (expand-file-name "site-lisp/autocomplete/ac-dict" user-emacs-directory))
(ac-config-default)
(setq ac-auto-start 0)
(delq 'ac-source-yasnippet ac-sources)

(global-auto-complete-mode t)

(provide 'setup-autocomplete)
