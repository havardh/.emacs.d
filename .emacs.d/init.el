; Set path to dependencies
(setq site-lisp-dir (expand-file-name "site-lisp" user-emacs-directory))
(setq modes-dir (expand-file-name "modes" user-emacs-directory))
(setq setup-dir (expand-file-name "setup" user-emacs-directory))
(setq themes-dir (expand-file-name "themes" user-emacs-directory))

; Set up load path
(add-to-list 'load-path user-emacs-directory)
(add-to-list 'load-path site-lisp-dir)
(add-to-list 'load-path modes-dir)
(add-to-list 'load-path setup-dir)
(add-to-list 'load-path themes-dir)

(require 'setup-platform)

(require 'styles)

(require 'setup-yasnippet)
(require 'setup-gtags)
(require 'setup-autocomplete)
(require 'setup-magit)
(require 'setup-ido)
(require 'setup-smex)
(require 'setup-multiple-cursors)
(require 'setup-perspective)
(require 'setup-minimap)
(require 'setup-expand-region)

(require 'user-functions)
(require 'setup-user-preferences)

(require 'setup-js2-mode)
(require 'setup-php-mode)
(require 'setup-web-mode)
(require 'setup-c-mode)
(require 'setup-scala-mode)
;(require 'setup-web-mode)
(require 'setup-multi-web-mode)

;(require 'setup-skewer-mode)
(require 'setup-projects)

(require 'mode-bindings)
(require 'key-bindings)
