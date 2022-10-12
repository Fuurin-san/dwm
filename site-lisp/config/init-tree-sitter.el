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
(add-hook 'tree-sitter-after-on-hook #'tree-sitter-hl-mode)
;;(add-hook 'python-mode-hook #'tree-sitter-hl-mode)
;;(add-hook 'c-mode-hook #'tree-sitter-hl-mode)
;;(add-hook 'rust-mode-hook #'tree-sitter-hl-mode)

;; Add Emacs-Lisp for tree-sitter:
;;
;; 1. git clone https://github.com/Wilfred/tree-sitter-elisp
;; 2. gcc ./src/parser.c -fPIC -I./ --shared -o elisp.so
;; 3. cp ./elisp.so ~/.tree-sitter-langs/bin (~/.tree-sitter-langs/bin is path of your tree-sitter-langs repo)
;;(tree-sitter-load 'elisp)
;;(add-to-list 'tree-sitter-major-mode-language-alist '(emacs-lisp-mode . elisp))
;;(add-to-list 'tree-sitter-major-mode-language-alist '(inferior-emacs-lisp-mode . elisp))

(provide 'init-tree-sitter)
;;; init-tree-sitter.el ends here
