
;; Beautify
;; https://github.com/lassik/emacs-format-all-the-code/blob/master/format-all.el
;; (use-package format-all
;;   :ensure t
;;   :preface
;;   (defun nk/format-code ()
;;     "Auto-format whole buffer."
;;     (interactive)
;;     (if (derived-mode-p 'prolog-mode)
;;         (prolog-indent-buffer)
;;       (format-all-buffer)))
;;   :config
;;   (global-set-key (kbd "M-F") #'nk/format-code)
;;   (add-hook 'prog-mode-hook #'format-all-ensure-formatter))


(use-package format-all
  :commands format-all-mode
  :hook (prog-mode . format-all-mode)
  :config
  (setq-default format-all-formatters
                '(("CSS"     (prettier))
		  ("SCSS"    (prettier)))))


(defun my/format-buffer ()
  "Format current buffer with LSP if available, else use format-all."
  (interactive)
  (cond
   ((and (bound-and-true-p lsp-mode)
         (fboundp 'lsp-format-buffer)
         (fboundp 'lsp-feature?)
         (lsp-feature? "textDocument/formatting"))
    (lsp-format-buffer))
   ((fboundp 'format-all-buffer)
    (call-interactively #'format-all-buffer))
   (t
    (user-error "No supported formatter found for this buffer"))))
 
(global-set-key (kbd "M-F") #'my/format-buffer)
