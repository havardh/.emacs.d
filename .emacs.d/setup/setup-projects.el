(setq custom-persp/project-root "~/")
(setq custom-persp/project-c-basic-offset 2)
(setq custom-persp/project-indent-tabs-mode t)

(defun custom-persp/emacs nil
  (interactive)
  (setq custom-persp/project-root "/Users/havard/Documents/programmering/elisp/emacsd")
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

;(define-key persp-mode-map (kbd "C-x p p") 'custom-persp/php)

(defun custom-persp/ibok nil
  (interactive)
  (setq custom-persp/project-root "/Users/havard/Documents/programmering/php/ibok")
  (setq custom-persp/project-c-basic-offset 2)
  (setq custom-persp/project-indent-tabs-mode t)
  (custom-persp "ibok" (find-file custom-persp/project-root)))

(define-key persp-mode-map (kbd "C-x p i") 'custom-persp/ibok)


(defun custom-persp/gumbo nil
  (interactive)
  (setq custom-persp/project-root "~/c/gumbo-parser")
  (setq custom-persp/project-c-basic-offset 2)
  (setq custom-persp/project-indent-tabs-mode nil)
  (custom-persp "gumbo" (find-file custom-persp/project-root)))

(define-key persp-mode-map (kbd "C-x p g") 'custom-persp/gumbo)

(defun custom-persp/gumbo-test nil
  (interactive)
  (setq custom-persp/project-root "~/c/gumbo-test")
  (setq custom-persp/project-c-basic-offset 2)
  (setq custom-persp/project-indent-tabs-mode nil)
  (custom-persp "gt" (find-file custom-persp/project-root)))

(define-key persp-mode-map (kbd "C-x p t") 'custom-persp/gumbo-test)

(defun custom-persp/itera-nurse nil
  (interactive)
  (setq custom-persp/project-root "~/projects/cordova/itera-nurse")
  (setq custom-persp/project-c-basic-offset 2)
  (setq custom-persp/project-indent-tabs-mode nil)
  (custom-persp "itera-nurse" (find-file custom-persp/project-root)))

(define-key persp-mode-map (kbd "C-x p n") 'custom-persp/itera-nurse)

(defun custom-persp/java-test nil
  (interactive)
  (setq custom-persp/project-root "~/java/test")
  (setq custom-persp/project-c-basic-offset 2)
  (setq custom-persp/project-indent-tabs-mode nil)
  (custom-persp "java-test" (find-file custom-persp/project-root)))

(define-key persp-mode-map (kbd "C-x p a") 'custom-persp/java-test)

(defun custom-persp/berkeley nil
  (interactive)
  (setq custom-persp/project-root "/Users/havard/Documents/berkeley")
  (setq custom-persp/project-c-basic-offset 2)
  (setq custom-persp/project-indent-tabs-mode nil)
  (custom-persp "berkeley" (find-file custom-persp/project-root)))

(define-key persp-mode-map (kbd "C-x p b") 'custom-persp/berkeley)

(defun custom-persp/parallell nil
  (interactive)
  (setq custom-persp/project-root "/Users/havard/Documents/programmering/c/parallell")
  (setq custom-persp/project-c-basic-offset 4)
  (setq custom-persp/project-indent-tabs-mode nil)
  (custom-persp "parallell" (find-file custom-persp/project-root)))

(define-key persp-mode-map (kbd "C-x p p") 'custom-persp/parallell)

(defun custom-persp/gecko nil
  (interactive)
  (setq custom-persp/project-root "/Users/havard/Documents/programmering/c/gecko")
  (setq custom-persp/project-c-basic-offset 2)
  (setq custom-persp/project-indent-tabs-mode nil)
  (custom-persp "gecko" (find-file custom-persp/project-root)))

(define-key persp-mode-map (kbd "C-x p g") 'custom-persp/gecko)

(defun custom-persp/comp.proj nil
  (interactive)
  (setq custom-persp/project-root "/Users/havard/Documents/programmering/c/tdt4295/")
  (setq custom-persp/project-c-basic-offset 2)
  (setq custom-persp/project-indent-tabs-mode t)
  (custom-persp "comp.proj" (find-file custom-persp/project-root)))

(define-key persp-mode-map (kbd "C-x p c") 'custom-persp/comp.proj)

(defun custom-persp/smp nil
  (interactive)
  (setq custom-persp/project-root "/home/havard/workspace/smp")
  (setq custom-persp/project-c-basic-offset 4)
  (setq custom-persp/project-indent-tabs-mode nil)
  (custom-persp "smp" (find-file custom-persp/project-root)))

(define-key persp-mode-map (kbd "C-x p s") 'custom-persp/smp)

(defun after-major-mode-hook nil
  (interactive)
  (setq c-basic-offset custom-persp/project-c-basic-offset)
  (setq indent-tabs-mode custom-persp/project-indent-tabs-mode)
  (setq tab-width custom-persp/project-c-basic-offset)
  ; web-mode
  (setq web-mode-markup-indent-offset custom-persp/project-c-basic-offset)
  (setq web-mode-css-indent-offset custom-persp/project-c-basic-offset)
  (setq web-mode-code-indent-offset custom-persp/project-c-basic-offset)
  (setq web-mode-indent-style custom-persp/project-c-basic-offset)
  ; autocomplete fix
  (delq 'ac-source-yasnippet ac-sources))

(add-hook 'after-change-major-mode-hook 'after-major-mode-hook)

(provide 'setup-projects)
