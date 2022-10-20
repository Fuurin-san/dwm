;;; init-lsp-bridge.el --- lsp-bridge config
;;; Commentary:
;;; Code:

;;lsp-bridge配置
(package-install 'posframe)
(package-install 'markdown-mode)
(require 'yasnippet)
(yas-global-mode 1)
(require 'lsp-bridge)
(global-lsp-bridge-mode)

;;(setq acm-enable-quick-access t)
;; 切换 lsp-bridge 英文补全
(define-key lsp-bridge-mode-map (kbd "M-c e") 'lsp-bridge-toggle-sdcv-helper)

(provide 'init-lsp-bridge)
;;; init-lsp-bridge.el ends here
