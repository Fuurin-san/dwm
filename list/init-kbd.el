;;; init-kbd.el --- setting of emacs keyboard shortcut
;;; Commentary:
;;; Code:

;;设置"C-n"与"C-p"为激活company补全时的上下切换鍵
;;(define-key company-active-map (kbd "C-n") 'company-select-next)
;;(define-key company-active-map (kbd "C-p") 'company-select-previous)

;;设置C-h C-f为查询函数定义
(global-set-key (kbd "C-h C-f") 'find-function)
;;设置C-h C-v为查询变量
(global-set-key (kbd "C-h C-v") 'find-variable)
;;设置C-h C-k为查询快捷键
(global-set-key (kbd "C-h C-k") 'find-function-on-key)
;;set netease-cloud-music shortkey
;;(global-set-key (kbd "M-n") 'netease-cloud-music)

;;set shortkey of dirvish
;;(global-set-key (kbd "M-e") 'dirvish-dwim)
;;(global-set-key (kbd "M-q") 'dirvish-quit)
(global-set-key (kbd "C-c o") 'consult-file-externally)
(global-set-key (kbd "C-c f") 'consult-locate)

;;toggle-company-english-helper
(global-set-key (kbd "M-n") 'toggle-company-english-helper)


(provide 'init-kbd.el)

;;; init-kbd.el ends here
