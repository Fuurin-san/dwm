;;; init-lsp-bridge.el --- lsp-bridge config
;;; Commentary:
;;; Code:

;;lsp-bridge配置
(package-install 'posframe)
(package-install 'yasnippet)
(package-install 'markdown-mode)
(add-to-list 'load-path "~/.emacs.d/github/lsp-bridge")
(require 'yasnippet)
(yas-global-mode 1)
(require 'lsp-bridge)
(global-lsp-bridge-mode)

(provide 'init-lsp-bridge)
;;; init-lsp-bridge.el ends here
