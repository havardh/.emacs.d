(defun indent-buffer ()
  (interactive)
  (indent-region (point-min) (point-max)))

(setq open-initial "")

(defun open (&optional file)
  (interactive)
  (if (not file) (setq file (read-from-minibuffer "File to open: " open-initial)))
  (setq open-initial file)
  (shell-command (concat "open " file)))

(defun compile-open nil
  (interactive)
  (compile nil)
  (open))

(setq run-initial "")

(defun run (&optional file) 
  (interactive)
  (if (not file) (setq file (read-from-minibuffer "File to run: " run-initial)))
  (setq run-initial file)
  (shell-command (concat "./" file)))

(defun compile-run nil
  (interactive)
  (compile nil)
  (open))

(provide 'user-functions)
