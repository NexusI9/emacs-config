;; set "gnu" style indenting for c
(setq c-default-style "linux"
      c-basic-offset 4)

;; turn on electric pair mode (pair parenthesis, braces...)
(electric-pair-mode 1)

;; Remapping keyboard M = cmd
(setq mac-option-modifier 'nil
      ns-command-modifier 'meta)

;; Display line number
(add-hook 'prog-mode-hook 'display-line-numbers-mode)


;; Beautify
(use-package format-all
  :preface
  (defun nk/format-code ()
    "Auto-format whole buffer."
    (interactive)
    (if (derived-mode-p 'prolog-mode)
        (prolog-indent-buffer)
      (format-all-buffer)))
  :config
  (global-set-key (kbd "M-F") #'nk/format-code)
  (add-hook 'prog-mode-hook #'format-all-ensure-formatter))
