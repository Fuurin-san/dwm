;;; init-lsp-bridge.el --- lsp-bridge config
;;; Commentary:
;;; Code:

;;; Require:
(package-install 'markdown-mode)
(package-install 'dumb-jump)
(require 'yasnippet)
(require 'lsp-bridge)


;;lsp-bridge配置
(yas-global-mode 1)
(global-lsp-bridge-mode)

;;(setq acm-enable-quick-access t)

;; 融合 `lsp-bridge' `find-function' 以及 `dumb-jump' 的智能跳转
(defun lsp-bridge-jump ()
  (interactive)
  (cond
   ((eq major-mode 'emacs-lisp-mode)
    (let ((symb (function-called-at-point)))
      (when symb
        (find-function symb))))
   (lsp-bridge-mode
    (lsp-bridge-find-def))
   (t
    (require 'dumb-jump)
    (dumb-jump-go))))

(defun lsp-bridge-jump-back ()
  (interactive)
  (cond
   (lsp-bridge-mode
    (lsp-bridge-find-def-return))
   (t
    (require 'dumb-jump)
    (dumb-jump-back))))

;; set key
;; 切换 lsp-bridge 英文补全
(define-key lsp-bridge-mode-map (kbd "M-c e") 'lsp-bridge-toggle-sdcv-helper)
(define-key lsp-bridge-mode-map (kbd "M-c d") 'lsp-bridge-popup-documentation)
(define-key lsp-bridge-mode-map (kbd "M-c j") 'lsp-bridge-jump)
(define-key lsp-bridge-mode-map (kbd "M-c b") 'lsp-bridge-jump-back)
;;(define-key lsp-bridge-mode-map (kbd "C-j") 'lsp-bridge-popup-documentation-scroll-down)

(provide 'init-lsp-bridge)
;;; init-lsp-bridge.el ends here
