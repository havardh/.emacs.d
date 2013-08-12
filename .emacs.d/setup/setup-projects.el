(setq custom-persp/project-root "~/")

(defun custom-persp/emacs nil
  (interactive)
  (setq custom-persp/project-root "~/")
  (custom-persp "emacs"
		(find-file custom-persp/project-root)))
(define-key persp-mode-map (kbd "C-x p e") 'custom-persp/emacs)

(defun custom-persp/js nil
  (interactive)
  (setq custom-persp/project-root "~/js")
  (custom-persp "js"
		(find-file custom-persp/project-root)))
(define-key persp-mode-map (kbd "C-x p j") 'custom-persp/js)

(defun custom-persp/php nil
  (interactive)
  (setq custom-persp/project-root "~/php")
  (custom-persp "php"
		(find-file custom-persp/project-root)))
(define-key persp-mode-map (kbd "C-x p p") 'custom-persp/php)
  

(provide 'setup-projects)
