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

(provide 'setup-projects)
