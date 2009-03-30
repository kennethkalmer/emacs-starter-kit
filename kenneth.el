;; A color mode
(color-theme-zenburn)

;; Capfiles are Ruby too
(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Capfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru$" . ruby-mode))

;; Vendor stuff
(add-to-list 'load-path (concat dotfiles-dir "/vendor/egg"))
(add-to-list 'load-path (concat dotfiles-dir "/vendor/gist.el"))

;; egg
(require 'egg)
