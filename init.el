;; load additional packages
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

;; window
(load "~/.emacs.d/window.el")

;; code
(load "~/.emacs.d/code.el")

;; theme
(load "~/.emacs.d/theme.el")

;; multicursors
(load "~/.emacs.d/multicursors.el")

;; dashboard
(load "~/.emacs.d/dashboard.el")

;; tabs
(load "~/.emacs.d/tabs.el")

;; lsp
(load "~/.emacs.d/lsp.el")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(format-all dashboard lsp-treemacs lsp-mode company)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
