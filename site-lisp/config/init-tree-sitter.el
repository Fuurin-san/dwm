;;; init-tree-sitter.el --- init tree-sitter
;;; Commentary:
;;; Code:

;;tree-sitter syntax highlight
(require 'tree-sitter)
(require 'tree-sitter-hl)
(require 'tree-sitter-langs)
(require 'tree-sitter-debug)
(require 'tree-sitter-query)
(global-tree-sitter-mode)

(add-hook 'python-mode-hook #'tree-sitter-hl-mode)
(add-hook 'c-mode-hook #'tree-sitter-hl-mode)
(add-hook 'rust-mode-hook #'tree-sitter-hl-mode)

(provide 'init-tree-sitter)
;;; init-tree-sitter.el ends here
