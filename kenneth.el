;; A color mode
(color-theme-zenburn)

;; Capfiles are Ruby too
(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))

;; Vendor stuff
(add-to-list 'load-path (concat dotfiles-dir "/vendor/egg"))

;; egg
(require 'egg)