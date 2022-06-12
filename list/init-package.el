;;; init-elpa-package.el --- setting of emacs use-package
;;; Commentary:
;;; Code:

;;开启company
;;(package-install 'company)
;;(package-install 'company-box)
;;(global-company-mode 1)

;;重启emacs
(use-package restart-emacs)

;;emacs启动性能测试
(use-package benchmark-init
  :init (benchmark-init/activate)
  :hook (after-init ./benchmark-init/deactive))

;;
(use-package drag-stuff
  :bind (("<M-up>" . drag-stuff-up)
	 ("<M-down>" . drag-stuff-down)))

;;文件格式检查
(use-package flycheck
  :hook (after-init . global-flycheck-mode))

;;快速切换buffer
(use-package ace-window
  :bind (("M-o" . 'ace-window)))

;;minibuffer补全增强 & 无序补全
(package-install 'vertico)
(vertico-mode t)
(package-install 'orderless)
(setq completion-styles '(orderless))

;;minibuffer补全时显示详细信息
(package-install 'marginalia)
(marginalia-mode t)

;;快捷使用
(package-install 'embark)
(global-set-key (kbd "M-;") 'embark-act)

(setq prefix-help-command 'embark-prefix-help-command)

;;I search
(package-install 'consult)
(global-set-key (kbd "C-s") 'consult-line)
;;search my insert
(global-set-key (kbd "M-s i") 'consult-imenu)
;;search function(函数)

(package-install 'all-the-icons)
(when (display-graphic-p)
  (require 'all-the-icons))

(package-install 'memory-usage)
;;(global-set-key (kbd "M-,") 'memory-usage)

;;high light
(package-install 'symbol-overlay)
(global-set-key (kbd "M-s h") 'symbol-overlay-put)

;;dirvish
;;(package-install 'dirvish)
;;(setq dirvish-attributes '(all-the-icons))
;;(setq dirvish--debouncing-delay 0.5)
(use-package dirvish
  :config
  (setq dirvish-attributes '(all-the-icons file-size))
  (setq dirvish--debouncing-delay 0.5))
;;doom-modeline
;;(require 'doom-modeline)
;;(package-install 'doom-modeline)
;;(doom-modeline-mode 1)
;;(use-package doom-modeline
;;  :ensure t
;;  :init (doom-modeline-mode 1)
;;  :config
;;  (setq doom-modeline-height 15))

;;(use-package company-english-helper
;;  :load-path "~/.emacs.d/github/company-english-helper"
;;  :commands
;;  (toggle-company-english-helper)
;;  :defer t)

;;fanyi
(use-package fanyi)

;;lsp-bridge配置
(add-to-list 'load-path "~/.emacs.d/github/lsp-bridge")
(package-install 'posframe)
(package-install 'yasnippet)
(package-install 'markdown-mode)
(require 'yasnippet)
(require 'lsp-bridge)
(yas-global-mode 1)
(global-lsp-bridge-mode)

(package-install 'magit)

(add-to-list 'load-path "~/.emacs.d/github/explain-pause-mode")
(require 'explain-pause-mode)

(package-install 'treemacs)

(add-to-list 'load-path "~/.emacs.d/github/one-key")
(require 'one-key)
(one-key-create-menu
 "MAGIT"
 '(
   (("s" . "Magit status") . magit-status+)
   (("c" . "Magit checkout") . magit-checkout)
   (("C" . "Magit commit") . magit-commit)
   (("u" . "Magit push to remote") . magit-push-current-to-pushremote)
   (("p" . "Magit delete remote branch") . magit-delete-remote-branch)
   (("i" . "Magit pull") . magit-pull-from-upstream)
   (("r" . "Magit rebase") . magit-rebase)
   (("e" . "Magit merge") . magit-merge)
   (("l" . "Magit log") . magit-log-all)
   (("L" . "Magit blame") . magit-blame+)
   (("b" . "Magit branch") . magit-branch)
   (("B" . "Magit buffer") . magit-process-buffer)
   (("D" . "Magit discarded") . magit-discard)
   (("," . "Magit init") . magit-init)
   (("." . "Magit add remote") . magit-remote-add)
   )
 t)

;;auto-save-command-history
(use-package savehist
  :ensure nil
  :hook (after-init . savehist-mode)
  :init (setq enable-recursive-minibuffers t
	      history-length 1000
	      savehist-additional-variables '(mark-ring
					      global-mark-ring
					      search-ring
					      regexp-search-ring
					      extended-command-history)
	      savehist-autosave-interval 300)
  )

;;auto-save-cursor-history
(use-package saveplace
  :ensure nil
  :hook (after-init . save-place-mode))


;;(meow-leader-define-key
;; '("t" . one-key-menu-magit))
;;(require ')
;;corfu-doc
;;(add-hook 'corfu-mode-hook #'corfu-doc-mode)
;;(define-key corfu-map (kbd "M-p") #'corfu-doc-scroll-down) ;; corfu-next
;;(define-key corfu-map (kbd "M-n") #'corfu-doc-scroll-up)  ;; corfu-previous
;;(define-key corfu-map (kbd "M-d") #'corfu-doc-toggle)
;;(setq corfu-doc-delay 0)

;;Syntax Highlighting
;;(package-install 'tree-sitter)
;;(package-install 'tree-sitter-langs)
;;(require 'tree-sitter)
;;(require 'tree-sitter-langs)
;;(global-tree-sitter-mode)

(provide 'init-package.el)
;;; init-package.el ends here
