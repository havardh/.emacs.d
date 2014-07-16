(add-to-list 'load-path (expand-file-name "modes/js2-mode" user-emacs-directory))
(require 'js2-mode)

(require 'setup-tern)

(add-hook 'js2-mode-hook 
          (lambda () 
            (setq-default js2-basic-offset custom-persp/project-c-basic-offset)
            (setq-variable indent-tabs-mode custom-persp/project-indent-tabs-mode)
            ))

(provide 'setup-js2-mode)
