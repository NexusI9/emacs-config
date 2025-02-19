;; inhibit splash screen
(setq inhibit-splash-screen t)

;; chage the font
(set-face-attribute 'default nil :font "JetBrains Mono" )

;; maximize screen on startup
(add-hook 'window-setup-hook 'toggle-frame-maximized t)

;; disable menu on startup
(menu-bar-mode -1)

;; disable tools on startup
(tool-bar-mode -1)

;; disable scroll bar on startup
(scroll-bar-mode -1)

;; disable title bar
(add-to-list 'default-frame-alist '(undecorated . t))

(defun save-window-layout ()
  "Save the current window layout to a file in ~/.emacs.d/.cache/window-layout."
  (interactive)
  (let ((file "~/.emacs.d/.cache/window-layout"))
    (make-directory (file-name-directory file) t)  ;; Ensure the directory exists
    (with-temp-file file
      (prin1 (window-state-get (frame-root-window) t) (current-buffer))))
  (message "Window layout saved!"))

(defun load-window-layout ()
  "Restore the saved window layout from ~/.emacs.d/.cache/window-layout."
  (interactive)
  (let ((file "~/.emacs.d/.cache/window-layout"))
    (when (file-exists-p file)
      (with-temp-buffer
        (insert-file-contents file)
        (window-state-put (read (current-buffer)) (frame-root-window))))
    (message "Window layout restored!")))

(add-hook 'emacs-startup-hook #'load-window-layout)
