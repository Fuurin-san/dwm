;;; init-elpa-package.el --- setting of emacs use-package
;;; Commentary:
;;; Code:

;;emacs启动性能测试
(use-package benchmark-init
  :init (benchmark-init/activate)
  :hook (after-init ./benchmark-init/deactive))

;;minibuffer补全增强 & 无序补全
(package-install 'vertico)
(vertico-mode t)
(package-install 'orderless)
(setq completion-styles '(orderless))

;;minibuffer补全时显示详细信息
(package-install 'marginalia)
(marginalia-mode)

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

;; magit
(package-install 'magit)

(provide 'init-package)
;;; init-package.el ends here
