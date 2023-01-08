;;; init-lsp-bridge.el --- lsp-bridge config
;;; Commentary:
;;; Code:

;; Source: https://github.com/manateelazycat/lsp-bridge

;;; Require:
;; markdown-mode
;; posframe
;; yasnippet

(package-install 'dumb-jump)
(require 'yasnippet)
(require 'lsp-bridge)


;;lsp-bridge配置
(yas-global-mode 1)
(global-lsp-bridge-mode)


;;1.cargo install ds-pinyin-lsp
;;2.下载 ds-pinyin 的 dict.db3 文件，并保存到目录 ~/.emacs.d/ds-pinyin/
;;3.最后开启选项 lsp-bridge-use-ds-pinyin-in-org-mode
(setq lsp-bridge-use-ds-pinyin-in-org-mode t)

;; Alt + Num 快速选择候选项
(setq acm-enable-quick-access t)

(setq lsp-bridge-c-lsp-server "ccls")

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
