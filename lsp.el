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
  (setq lsp-idle-delay 0.5))

(use-package lsp-treemacs
  :ensure t
  )

(add-hook 'c-mode-hook 'lsp-deferred)
(add-hook 'c++-mode-hook 'lsp-deferred)
(add-hook 'python-mode 'lsp-deferred)
(add-hook 'css-mode 'lsp-deferred)
(add-hook 'js-mode-hook 'lsp-deferred)
(add-hook 'typescript-mode-hook 'lsp-deferred)
(add-hook 'tsx-ts-mode 'lsp-deferred)
(add-hook 'html-mode-hook 'lsp-deferred)
(add-hook 'php-mode-hook 'lsp-deferred)
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


;;WGSL

;; Associate .wgsl files with wgsl-mode
(add-to-list 'auto-mode-alist '("\\.wgsl\\'" . wgsl-mode))

;; Set up lsp-language-id-configuration for wgsl
(setq lsp-language-id-configuration
      (append lsp-language-id-configuration
              '(("\\.wgsl\\'" . "wgsl"))))

;; Start lsp-mode automatically for wgsl-mode
(add-hook 'wgsl-mode-hook #'lsp)

;; Optionally bind lsp-format-buffer to a key for formatting
(define-key wgsl-mode-map (kbd "C-c C-f") #'lsp-format-buffer)
