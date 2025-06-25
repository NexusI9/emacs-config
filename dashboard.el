;; Display dashboard on start
(use-package dashboard
  :ensure t
  :init
  (dashboard-setup-startup-hook))

(setq dashboard-startup-banner "~/.emacs.d/media/logo.svg")

(setq dashboard-items '((recents   . 10)))
