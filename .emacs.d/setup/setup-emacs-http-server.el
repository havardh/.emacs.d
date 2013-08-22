(add-to-list 'load-path (expand-file-name "emacs-http-server" site-lisp-dir))

(require 'simple-httpd)
(setq httpd-root "/var/www")
(httpd-start)

(provide 'setup-emacs-http-server)
