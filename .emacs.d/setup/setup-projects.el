(setq custom-persp/project-root "~/")
(setq custom-persp/project-c-basic-offset 2)
(setq custom-persp/project-indent-tabs-mode t)

(defun custom-persp/emacs nil
  (interactive)
  (setq custom-persp/project-root "~/")
  (setq custom-persp/project-c-basic-offset 2)
  (setq custom-persp/project-indent-tabs-mode nil)
  (custom-persp "emacs" (find-file custom-persp/project-root)))

(define-key persp-mode-map (kbd "C-x p e") 'custom-persp/emacs)

(defun custom-persp/js nil
  (interactive)
  (setq custom-persp/project-root "~/js")
  (custom-persp "js" (find-file custom-persp/project-root)))

(define-key persp-mode-map (kbd "C-x p j") 'custom-persp/js)

(defun custom-persp/php nil
  (interactive)
  (setq custom-persp/project-root "~/php")
  (setq custom-persp/project-c-basic-offset 2)
  (setq custom-persp/project-indent-tabs-mode nil)
  (custom-persp "php" (find-file custom-persp/project-root)))

(define-key persp-mode-map (kbd "C-x p p") 'custom-persp/php)

(defun custom-persp/ibok nil
  (interactive)
  (setq custom-persp/project-root "/Users/havard/Documents/programmering/php/ibok")
  (setq custom-persp/project-c-basic-offset 2)
  (setq custom-persp/project-indent-tabs-mode t)
  (custom-persp "ibok" (find-file custom-persp/project-root)))

(define-key persp-mode-map (kbd "C-x p i") 'custom-persp/ibok)

(defun after-major-mode-hook nil
  (interactive)
  (setq c-basic-offset custom-persp/project-c-basic-offset)
  (setq indent-tabs-mode custom-persp/project-indent-tabs-mode)
  (setq tab-width custom-persp/project-c-basic-offset)
  ; web-mode
  (setq web-mode-markup-indent-offset custom-persp/project-c-basic-offset)
  (setq web-mode-css-indent-offset custom-persp/project-c-basic-offset)
  (setq web-mode-code-indent-offset custom-persp/project-c-basic-offset)
  (setq web-mode-indent-style custom-persp/project-c-basic-offset))

(add-hook 'after-change-major-mode-hook 'after-major-mode-hook)

(provide 'setup-projects)
