;; load additional packages
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

;; window
(load "~/.emacs.d/window.el")

;; code
(load "~/.emacs.d/code.el")

;; wgsl-mode
(load "~/.emacs.d/wgsl-mode.el")

;; theme
(load "~/.emacs.d/theme.el")

;; multicursors
(load "~/.emacs.d/multicursors.el")

;; dashboard
;; (load "~/.emacs.d/dashboard.el")

;; save sessions
;; (load "~/.emacs.d/desktop.el")

;; tabs
(load "~/.emacs.d/tabs.el")

;; lsp
(load "~/.emacs.d/lsp.el")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(ef-duo-dark modus-vivendi))
 '(custom-safe-themes
   '("5e39e95c703e17a743fb05a132d727aa1d69d9d2c9cde9353f5350e545c793d4" "77f281064ea1c8b14938866e21c4e51e4168e05db98863bd7430f1352cab294a" "df39cc8ecf022613fc2515bccde55df40cb604d7568cb96cd7fe1eff806b863b" "2551f2b4bc12993e9b8560144fb072b785d4cddbef2b6ec880c602839227b8c7" "ac893acecb0f1cf2b6ccea5c70ea97516c13c2b80c07f3292c21d6eb0cb45239" "6af300029805f10970ebec4cea3134f381cd02f04c96acba083c76e2da23f3ec" "541282f66e5cc83918994002667d2268f0a563205117860e71b7cb823c1a11e9" "b9c002dc827fb75b825da3311935c9f505d48d7ee48f470f0aa7ac5d2a595ab2" "aff0396925324838889f011fd3f5a0b91652b88f5fd0611f7b10021cc76f9e09" "211621592803ada9c81ec8f8ba0659df185f9dc06183fcd0e40fbf646c995f23" "00d7122017db83578ef6fba39c131efdcb59910f0fac0defbe726da8072a0729" "ae20535e46a88faea5d65775ca5510c7385cbf334dfa7dde93c0cd22ed663ba0" "d6b369a3f09f34cdbaed93eeefcc6a0e05e135d187252e01b0031559b1671e97" "b41d0a9413fb0034cea34eb8c9f89f6e243bdd76bccecf8292eb1fefa42eaf0a" "a0e9bc5696ce581f09f7f3e7228b949988d76da5a8376e1f2da39d1d026af386" "59c36051a521e3ea68dc530ded1c7be169cd19e8873b7994bfc02a216041bf3b" "1ad12cda71588cc82e74f1cabeed99705c6a60d23ee1bb355c293ba9c000d4ac" "cee5c56dc8b95b345bfe1c88d82d48f89e0f23008b0c2154ef452b2ce348da37" "90185f1d8362727f2aeac7a3d67d3aec789f55c10bb47dada4eefb2e14aa5d01" "ffa78fc746f85d1c88a2d1691b1e37d21832e9a44a0eeee114a00816eabcdaf9" "d609d9aaf89d935677b04d34e4449ba3f8bbfdcaaeeaab3d21ee035f43321ff1" "96998f6f11ef9f551b427b8853d947a7857ea5a578c75aa9c4e7c73fe04d10b4" "c48551a5fb7b9fc019bf3f61ebf14cf7c9cdca79bcb2a4219195371c02268f11" "987b709680284a5858d5fe7e4e428463a20dfabe0a6f2a6146b3b8c7c529f08b" "3d5ef3d7ed58c9ad321f05360ad8a6b24585b9c49abcee67bdcbb0fe583a6950" "e0d42a58c84161a0744ceab595370cbe290949968ab62273aed6212df0ea94b4" "3cd28471e80be3bd2657ca3f03fbb2884ab669662271794360866ab60b6cb6e6" "3cc2385c39257fed66238921602d8104d8fd6266ad88a006d0a4325336f5ee02" "e9776d12e4ccb722a2a732c6e80423331bcb93f02e089ba2a4b02e85de1cf00e" "72a81c54c97b9e5efcc3ea214382615649ebb539cb4f2fe3a46cd12af72c7607" "58c6711a3b568437bab07a30385d34aacf64156cc5137ea20e799984f4227265" "b3775ba758e7d31f3bb849e7c9e48ff60929a792961a2d536edec8f68c671ca5" "9b59e147dbbde5e638ea1cde5ec0a358d5f269d27bd2b893a0947c4a867e14c1" "6bdc4e5f585bb4a500ea38f563ecf126570b9ab3be0598bdf607034bb07a8875" "01a9797244146bbae39b18ef37e6f2ca5bebded90d9fe3a2f342a9e863aaa4fd" "6fc9e40b4375d9d8d0d9521505849ab4d04220ed470db0b78b700230da0a86c1" "04aa1c3ccaee1cc2b93b246c6fbcd597f7e6832a97aaeac7e5891e6863236f9f" "76ddb2e196c6ba8f380c23d169cf2c8f561fd2013ad54b987c516d3cabc00216" "b11edd2e0f97a0a7d5e66a9b82091b44431401ac394478beb44389cf54e6db28" "24fba8d15d029ca2ed94dc4722459e9b64d679d7ae14b77b61412e2c85b3b641" default))
 '(package-selected-packages
   '(treesit-auto php-mode php-cs-fixer git-gutter ef-themes sublime-themes esmond-theme gruber-darker-theme subatomic-theme color-theme-sanityinc-tomorrow format-all dashboard lsp-treemacs lsp-mode company))
 '(subatomic-high-contrast t)
 '(subatomic-more-visible-comment-delimiters t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil)))))

;; backup/autosave
(defvar backup-dir (expand-file-name "~/.emacs.d/backup/"))
(defvar autosave-dir (expand-file-name "~/.emacs.d/autosave/"))
(setq backup-directory-alist (list (cons ".*" backup-dir)))
(setq auto-save-list-file-prefix autosave-dir)
(setq auto-save-file-name-transforms `((".*" ,autosave-dir t)))
