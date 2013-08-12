(add-to-list 'load-path (expand-file-name "tern/emacs" site-lisp-dir))
(require 'tern)

(eval-after-load 'tern
   '(progn
      (require 'tern-auto-complete)
      (tern-ac-setup)))

(provide 'setup-tern)
