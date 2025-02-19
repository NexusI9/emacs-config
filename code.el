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
;; https://github.com/lassik/emacs-format-all-the-code/blob/master/format-all.el
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


;; Copy line
(defun copy-line ()
  (interactive)
  (save-excursion
    (back-to-indentation)
    (kill-ring-save
     (point)
     (line-end-position)))
  (message "1 line copied"))
(global-set-key "\C-c\C-l" 'copy-line)

;; set code session window layout
(defun code-layout ()
  "Set up a specific window layout:
- Left: Main window showing dired.
- Right (Top): Also showing dired.
- Right (Bottom): Shell in the current directory."
  (interactive)
  (delete-other-windows)
  ;; Create the left window first
  (let* ((main (selected-window))
         (right (split-window main nil 'right))
         (bottom-right (split-window right nil 'below)))
    ;; Open Dired in the left window (main)
    (dired default-directory)

    ;; Open Dired in the top-right window
    (select-window right)
    (dired default-directory)

    ;; Open Shell in the bottom-right window
    (select-window bottom-right)
    (shell)

    ;; Return focus to main window (left)
    ;; (select-window main)))

(global-set-key (kbd "C-c c") 'code-layout) ;; Bind to a shortcut


;; git gutter
(use-package git-gutter
  :ensure t
  :hook (prog-mode . git-gutter-mode)
  :config
  (global-git-gutter-mode))

(global-set-key (kbd "C-x g") 'git-gutter-mode)
