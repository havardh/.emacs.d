(add-to-list 'load-path (expand-file-name "perspective" site-lisp-dir))
(require 'perspective)

(persp-mode 1)

(defmacro custom-persp (name &rest body)
  `(let ((initialize (not (gethash ,name perspectives-hash)))
	 (current-perspective persp-curr))
     (persp-switch ,name)
     (when initialize ,@body)
     (setq persp-last current-perspective)))

(defun custom-persp-last nil
  (interactive)
  (persp-switch (persp-name persp-last)))

(provide 'setup-perspective)
