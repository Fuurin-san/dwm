;;; init-config.el --- open emacs build-in
;;; Commentary:
;;; Code:
(setq make-backup-files nil)

;;括号匹配 & 括号补全
(show-paren-mode t)
(electric-pair-mode 1)

;;选中文本替换
(delete-selection-mode t)

;;高亮当前行
(global-hl-line-mode t)

;;release super
(setq w32-apps-modifier 'super)

(require 'org-tempo)
;;(icomplete-mode 1)
;;tab鍵自动补全

;;自动加载外部文件
(global-auto-revert-mode 1)

;;(fido-mode t)
;;; setting for pyim(chinese)
;;(require 'pyim)
;;(setq default-input-method "pyim")
;;(global-set-key (kbd "M-j") 'pyim-convert-string-at-point)
;;(define-key minibuffer-local-map (kbd "C-<return>") 'pyim-cregexp-convert-at-point)
;;(pyim-default-scheme 'quanpin)
;;(setq-default pyim-english-input-switch-functions
;;	      '(pyim-probe-dynamic-english
;;		pyim-probe-isearch-mode
;;		pyim-probe-program-mode
;;		pyim-probe-org-structure-template))
;;(setq-default pyim-punctuation-half-width-functions
;;	      '(pyim-probe-punctuation-line-beginning
;;		pyim-probe-punctuation-after-punctuation))
;;(pyim-isearch-mode 1)
;;(setq pyim-page-length 5)
;;(require 'pyim-basedict)
;;(pyim-basedict-enable)

(provide 'init-config.el)
;;; init-config.el ends here

