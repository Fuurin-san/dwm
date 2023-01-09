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
;;(use-package drag-stuff
;;  :bind (("<M-up>" . drag-stuff-up)
;;	 ("<M-down>" . drag-stuff-down)))

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

;;(global-set-key (kbd "M-,") 'memory-usage)
(package-install 'memory-usage)

;;(unless (display-graphic-p)
;;  (add-to-list 'load-path "~/.emacs.d/github/emacs-popon")
;;  (add-to-list 'load-path "~/.emacs.d/github/acm-terminal")
;;  (with-eval-after-load 'acm
;;    (require 'acm-terminal)))

;; magit
(package-install 'magit)

;;emacs top
;;(add-to-list 'load-path "~/.emacs.d/github/explain-pause-mode")
;;(require 'explain-pause-mode)



;; rust support
(package-install 'rust-mode)
(package-install 'flycheck-rust)
(with-eval-after-load 'rust-mode
  (add-hook 'flycheck-mode-hook #'flycheck-rust-setup))

(package-install 'nix-mode)

(provide 'init-package)
;;; init-package.el ends here
