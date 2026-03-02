;;
(use-package company
  :ensure t
  :config
  (add-to-list 'company-backends 'company-capf)
  (global-company-mode))




;; set lsp-mode (intellisense)
(use-package lsp-mode
  :ensure t
  :commands lsp
  :config
  ;; General config
  (setq lsp-auto-guess-root t)
  (setq lsp-log-io nil)
  (setq lsp-restart 'auto-restart)
  (setq lsp-enable-symbol-highlighting nil)
  (setq lsp-enable-on-type-formatting nil)
  (setq lsp-signature-auto-activate nil)
  (setq lsp-signature-render-documentation nil)
  (setq lsp-eldoc-hook nil)
  (setq lsp-modeline-code-actions-enable nil)
  (setq lsp-modeline-diagnostics-enable nil)
  (setq lsp-headerline-breadcrumb-enable nil)
  (setq lsp-semantic-tokens-enable nil)
  (setq lsp-enable-folding nil)
  (setq lsp-enable-imenu nil)
  (setq lsp-enable-snippet nil)
  (setq read-process-output-max (* 1024 1024)) ;; 1MB
  (setq lsp-idle-delay 0.5)

  ;; Keybinding
  (define-key lsp-mode-map (kbd "C-c C-l") lsp-command-map))
  (global-set-key (kbd "M-F") #'lsp-format-buffer)

(use-package lsp-treemacs
  :ensure t
  )

;; auto swith to lsp if find mode
(add-hook 'prog-mode-hook
          (lambda ()
            (unless (derived-mode-p 'emacs-lisp-mode)
              (lsp-deferred))))

(with-eval-after-load 'lsp-mode
  (add-hook 'lsp-mode-hook #'lsp-enable-which-key-integration))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(dashboard lsp-treemacs lsp-mode company)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


(setq typescript-indent-level 1)

;; prevents auto updating imports path
;; https://www.reddit.com/r/emacs/comments/1b0ppls/anyone_using_lspmode_with_tsls_having_trouble/
;; https://emacs-lsp.github.io/lsp-mode/page/settings/mode/#lsp-apply-edits-after-file-operations
(setq lsp-apply-edits-after-file-operations nil)
