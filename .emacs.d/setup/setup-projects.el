(defun custom-persp/emacs nil
  (interactive)
  (custom-persp "emacs"
		(find-file "~/.emacs.d")))
(define-key persp-mode-map (kbd "C-x p e") 'custom-persp/emacs)

(defun custom-persp/js nil
  (interactive)
  (custom-persp "js"
		(find-file "~/js")))
(define-key persp-mode-map (kbd "C-x p j") 'custom-persp/js)

(provide 'setup-projects)
