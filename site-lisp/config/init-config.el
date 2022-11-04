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
;;(setq w32-apps-modifier 'super)

;;(icomplete-mode 1)
;;tab鍵自动补全
(require 'org-tempo)

;;自动加载外部文件
(global-auto-revert-mode 1)

;; 設置系統編碼。
;;(prefer-coding-system 'utf-8)
;;(set-default-coding-systems 'utf-8)
;;(set-terminal-coding-system 'utf-8)
;;(set-keyboard-coding-system 'utf-8)
;;(setq default-buffer-file-coding-system 'utf-8) ;;default-buffer-file-coding-system is a void variable
(progn(set-language-environment "UTF-8")
      (setq system-time-locale "C"))

;;line number
;;(setq display-line-numbers-type 'relative)
;;(global-display-line-numbers-mode t)


;;set cursor type
(setq-default cursor-type '(bar . 2))

(setq inhibit-splash-screen 1)

;;set yes-->y  no-->n
(fset 'yes-or-no-p 'y-or-n-p)

;;sound off
(setq ring-bell-function 'ignore)
(blink-cursor-mode -1)

(provide 'init-config)
;;; init-config.el ends here
