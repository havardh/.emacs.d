(add-to-list 'load-path (expand-file-name "php-mode" modes-dir))
(require 'php-mode)

(define-key php-mode-map (kbd "C-.") nil)

(provide 'setup-php-mode)
