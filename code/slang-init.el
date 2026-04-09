;; slang-mode setup
(add-to-list 'load-path "~/.emacs.d/code")
(require 'slang-mode)

;; Path to slangd
(setq slang-lsp-server-executable "/usr/local/bin/slangd")

;; Check if slangd exists
(unless (executable-find slang-lsp-server-executable)
  (message
   "⚠️  slangd not found! Please:\n\
1. Download Slang binaries from https://github.com/shader-slang/slang/\n\
2. Place them somewhere (e.g., ~/slang)\n\
3. Create a symlink: sudo ln -s ~/slang/slang-<version>/bin/slangd /usr/local/bin/slangd"))

;; lsp-mode setup
(require 'lsp-mode)
(lsp-register-client
 (make-lsp-client
  :new-connection (lsp-stdio-connection slang-lsp-server-executable)
  :major-modes '(slang-mode)
  :server-id 'slang-lsp))

;; Auto-start lsp in slang-mode buffers
(add-hook 'slang-mode-hook #'lsp);; slang mode 
(add-to-list 'load-path "~/.emacs.d/code")
(require 'slang-mode)
;; Tell lsp-mode where slangd is (optional if in PATH)
(setq slang-lsp-server-executable "/usr/local/bin/slangd")

;; Register the slang-mode client for lsp-mode
(require 'lsp-mode)
(lsp-register-client
 (make-lsp-client
  :new-connection (lsp-stdio-connection slang-lsp-server-executable)
  :major-modes '(slang-mode)
  :server-id 'slang-lsp))

;; Auto-start lsp in slang-mode buffers
(add-hook 'slang-mode-hook #'lsp)
