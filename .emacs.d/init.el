; Set path to dependencies
(setq site-lisp-dir (expand-file-name "site-lisp" user-emacs-directory))
(setq modes-dir (expand-file-name "modes" user-emacs-directory))
(setq setup-dir (expand-file-name "setup" user-emacs-directory))

; Set up load path
(add-to-list 'load-path user-emacs-directory)
(add-to-list 'load-path site-lisp-dir)
(add-to-list 'load-path modes-dir)
(add-to-list 'load-path setup-dir)

(require 'setup-platform)

(require 'styles)

(require 'setup-yasnippet)
(require 'setup-gtags)

(require 'key-bindings)
