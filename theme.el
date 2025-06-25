;; add custom load path for themes
;;(add-to-list 'load-path "~/.emacs.d/themes/tokyonight-themes")
;;(require 'tokyonight-themes)
;;(load-theme 'tokyonight-night :no-confirm)

(use-package modus-themes :ensure t)
(use-package ef-themes :ensure t)

(defvar my-light-themes '(modus-operandi ef-duo-light)
  "List of light themes to toggle.")

(defvar my-dark-themes '(modus-vivendi ef-duo-dark)
  "List of dark themes to toggle.")

(defvar my-theme-mode 'dark
  "Current theme mode. Can be 'light or 'dark.")

(defun theme-switch ()
  "Toggle between light and dark theme sets."
  (interactive)
  (mapc #'disable-theme custom-enabled-themes) ;; Disable all themes
  (setq my-theme-mode (if (eq my-theme-mode 'dark) 'light 'dark))
  (mapc #'load-theme (if (eq my-theme-mode 'dark) my-dark-themes my-light-themes))
  (message "Switched to %s mode" my-theme-mode))

(global-set-key (kbd "C-c t") #'theme-switch) ;; Bind to Ctrl+C t
