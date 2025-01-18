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
