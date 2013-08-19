(add-hook 'c-mode-hook
          (lambda ()
            (unless (or (file-exists-p "makefile")
                        (file-exists-p "Makefile"))
              (set (make-local-variable 'compile-command)
                   (concat "gcc " buffer-file-name " -o " (file-name-sans-extension buffer-file-name) "; " (file-name-sans-extension buffer-file-name)))
              )
            )
          )

;(add-hook 'c-mode-hook
;	  (lambda ()
;	    (unless (or (file-exists-p "makefile")
;			(file-exists-p "Makefile"))
;	      (set (make-local-variable 'compile-command)
;		   (concat "make -k "
;			   (file-name-sans-extension buffer-file-name))))))
;
;(file-name-sans-extension (file-name-nondirectory buffer-file-name))

(provide 'setup-c-mode)
