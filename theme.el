;; add custom load path for themes
(add-to-list 'load-path "~/.emacs.d/themes/tokyonight-themes")

;; load custom theme
(require 'tokyonight-themes)
(load-theme 'tokyonight-night :no-confirm)
