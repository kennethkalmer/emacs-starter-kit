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

;; Copy and Paste support in Gnome the way I expect it work
;; http://www.emacswiki.org/cgi-bin/wiki/CopyAndPaste
(setq transient-mark-mode t)  ;  makes the region act quite like the text "highlight" in many apps.
(setq mouse-drag-copy-region nil)  ; stops selection with a mouse being immediately injected to the kill ring
(setq x-select-enable-primary nil)  ; stops killing/yanking interacting with primary X11 selection 
(setq x-select-enable-clipboard t)  ; makes killing/yanking interact with clipboard X11 selection

;; these will probably be already set to these values, leave them that way if so!
; (setf interprogram-cut-function 'x-select-text)
; (setf interprogram-paste-function 'x-cut-buffer-or-selection-value)

; this doesn't always quite work right at time of writing, see emacs bug #902, but when it does,
; it makes "highlight/middlebutton" style (X11 primary selection based) copy-paste work as expected
; if you're used to other modern apps (that is to say, the mere act of highlighting doesn't
; overwrite the clipboard or alter the kill ring, but you can paste in merely highlighted 
; text with the mouse if you want to)
(setq select-active-regions t) ;  active region sets primary X11 selection
(global-set-key [mouse-2] 'mouse-yank-primary)  ; make mouse middle-click only paste from primary X11 selection, not clipboard and kill ring.

;; with this, doing an M-y will also affect the X11 clipboard, making emacs act as a sort of clipboard history, at
;; least of text you've pasted into it in the first place.
; (setq yank-pop-change-selection t)  ; makes rotating the kill ring change the X11 clipboard.  
