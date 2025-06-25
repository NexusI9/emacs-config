;; save desktop configuration on exit
(setq desktop-path '("~/.emacs.d/.cache"))
(desktop-save-mode 1)
;; (setq desktop-restore-forces-onscreen nil)
;; (add-hook 'desktop-after-read-hook
;; (lambda ()
;;   (frameset-restore
;;    desktop-saved-frameset
;;    :reuse-frames (eq desktop-restore-reuses-frames t)
;;    :cleanup-frames (not (eq desktop-restore-reuses-frames 'keep))
;;    :force-display desktop-restore-in-current-display
;;    :force-onscreen desktop-restore-forces-onscreen)))
