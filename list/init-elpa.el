;;set melpa mirrors
;;设置melpa镜像源
(setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
			 ("nongnu" . "http://elpa.zilongshanren.com/nongnu/")))

;;;;;;;;;;;;;;
;; 添加新的 nongnu 的源

;;; 这个配置一定要配置在 use-package 的初始化之前，否则无法正常安装
(assq-delete-all 'org package--builtins)
(assq-delete-all 'org package--builtin-versions)

;;;;;;;;;;;;;;

;;包管理器设置

(setq package-check-signature nil)

(require 'package)
;;(package-initialize)
;;
(unless (bound-and-true-p package--initialized)
  (package-initialize))
;;
(unless package-archive-contents
  (package-refresh-contents))
;;install use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;;
(setq use-package-always-ensure t
      use-package-always-defer t
      use-package-always-demand nil
      use-package-expand-minimally t
      use-package-verbose t)

(package-install 'no-littering)
(require 'no-littering)


(require 'use-package)

(provide 'init-elpa.el)
;;; init-elpa.el ends here
