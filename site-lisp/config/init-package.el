;;; init-elpa-package.el --- setting of emacs use-package
;;; Commentary:
;;; Code:

;;emacs启动性能测试
(use-package benchmark-init
  :init (benchmark-init/activate)
  :hook (after-init ./benchmark-init/deactive))

;;minibuffer补全增强 & 无序补全
;;(package-install 'vertico)
(package-install 'orderless)
(setq completion-styles '(orderless))

;;minibuffer补全时显示详细信息
(package-install 'marginalia)
(marginalia-mode)

(package-install 'all-the-icons)
(when (display-graphic-p)
  (require 'all-the-icons))

(package-install 'memory-usage)

;; magit
(package-install 'magit)

(provide 'init-package)
;;; init-package.el ends here
