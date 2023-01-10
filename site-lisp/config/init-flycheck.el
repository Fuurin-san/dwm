;;; init-flycheck.el --- configuration flycheck
;;; Commentary:
;;; Source: https://github.com/flycheck/flycheck.git

;;; Require:
;;; flycheck
;;; flycheck-rust

;;; Code:
(require 'flycheck)
(global-flycheck-mode)

(require 'flycheck-rust)
(with-eval-after-load 'rust-mode
  (add-hook 'flycheck-mode-hook #'flycheck-rust-setup))

(provide 'init-flycheck)
;;; init-flycheck.el ends here
