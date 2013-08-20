; Line numbers
(global-linum-mode)

; Truncate lines
(setq truncate-lines t)

; Themes
(add-to-list 'load-path (expand-file-name "birds-of-paradise" themes-dir))
(add-to-list 'custom-theme-load-path (expand-file-name "birds-of-paradise" themes-dir))
;; Birds of paradise
(require 'birds-of-paradise-plus-theme)
;(load-theme birds-of-paradise-plus t)

(provide 'styles)
