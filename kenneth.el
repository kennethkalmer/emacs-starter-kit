;; A color mode
(color-theme-zenburn)

;; Capfiles are Ruby too
(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Capfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.god$" . ruby-mode))

;; Vendor stuff
(add-to-list 'load-path (concat dotfiles-dir "/vendor/egg"))
(add-to-list 'load-path (concat dotfiles-dir "/vendor/gist.el"))
(add-to-list 'load-path (concat dotfiles-dir "/vendor/relax.el"))

;; egg
(require 'egg)

;; gist.el
(require 'gist)

;; relax.el
(require 'relax)

;; whitespace handling
(setq-default show-trailing-whitespace t)
(global-set-key "\C-cw" 'delete-trailing-whitespace)
(setq require-final-newline t)

