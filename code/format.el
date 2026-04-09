(defun my/format-buffer ()
  "Format with LSP when supported, otherwise use format-all interactively."
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

(with-eval-after-load 'format-all
  (add-hook 'format-all-mode-hook #'format-all-ensure-formatter))

(global-set-key (kbd "M-F") #'my/format-buffer)

;; Define prettier as default formatter for css mode since language server doesn't support formatting
(with-eval-after-load 'format-all
  (setf (alist-get 'css-mode format-all-default-formatters) '(prettier))
  (setf (alist-get 'scss-mode format-all-default-formatters) '(prettier))
  (setf (alist-get 'less-css-mode format-all-default-formatters) '(prettier)))
