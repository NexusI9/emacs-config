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
  :ensure t
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


;; DELETEME?
;;(add-hook 'php-mode-hook
;;          (lambda ()
;;            (setq-local format-all-formatters '(("PHP" php-cs-fixer)))))


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
    ;; (select-window main)
    ))

(global-set-key (kbd "C-c c") 'code-layout) ;; Bind to a shortcut


;; git gutter
(use-package git-gutter
  :ensure t
  :hook (prog-mode . git-gutter-mode)
  :config
  (global-git-gutter-mode))

(global-set-key (kbd "C-x g") 'git-gutter-mode)


;; auto reload file on change
(global-auto-revert-mode t)

;; auto make file mode
(setq auto-mode-alist
      (append '(("Makefile\\'" . makefile-mode)
                ("makefile\\'" . makefile-mode))
              auto-mode-alist))


;; auto find Makefile and compile on C-c m
(defun my/compile-in-project-root ()
  "Run make from the nearest parent directory containing a Makefile."
  (interactive)
  (let ((root (locate-dominating-file default-directory "Makefile")))
    (if root
        (let ((compile-command (format "make -C %s" root)))
          (compile compile-command))
      (message "No Makefile found in any parent directory."))))

(global-set-key (kbd "C-c m") 'my/compile-in-project-root)


;; htop command

(defun htop ()
  "Open htop in a new terminal buffer and rename it to *htop*."
  (interactive)
  (let ((term-buffer (term "/bin/bash")))
    (with-current-buffer term-buffer
      (rename-buffer "*htop*" t)
      (term-send-raw-string "htop\n"))
    (switch-to-buffer term-buffer)))



;; treesite-auto
(use-package treesit-auto
  :ensure t
  :custom
  (treesit-auto-install 'prompt)
  :config
  (treesit-auto-add-to-auto-mode-alist 'all)
  (global-treesit-auto-mode))
