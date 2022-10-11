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

(provide 'init-lsp-bridge)
;;; init-lsp-bridge.el ends here
