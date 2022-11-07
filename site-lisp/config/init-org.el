;;; init-org.el --- setting of emacs org-mode
;;; Commentary:
;;; Code:

;; 快速插入模板
(require 'org-tempo)

;;(use-package org
;;  :pin melpa
;;  :ensure t)

;;org ToDo
;;(setq org-todo-keywords
;;      (quote ((sequence "TODO(t)" "STARTED(s)" "|" "DONE(d!/!)")
;;	      (sequence "WAITING(w@/!)" "SOMEDAY(S)" "|" "CANCELLED(c@/!)" "MEETING(m)" "PHONE(p)"))))

;;(use-package org-contrib
;;  :pin nongnu)

;;(require 'org-checklist)

;;收起org-mode log information
;;(setq org-log-done t)
;;(setq org-log-into-drawer t)

;;org日历
;;(global-set-key (kbd "C-c a") 'org-agenda)
;;(setq org-agenda-files '("~/Nutstore Files/note/org-note/ToDo.org"))
;;(setq org-agenda-span 'day)
;;
;;(setq org-capture-templates
;;      '(("t" "Todo" entry (file+headline "~/Nutstore Files/note/org-note/ToDo.org" "Workspace")
;;	 "* TODO [#B] %?\n  %i\n %U"
;;	 :empty-lines 1)))
;;(global-set-key (kbd "C-c r") 'org-capture)

;; 设置org标题1-8级的字体大小和颜色，颜色摘抄自monokai。;希望org-mode标题的字体大小和正文一致，设成1.0， 如果希望标题字体大一点可以设成1.2
;;(custom-set-faces
;;  '(org-level-1 ((t (:inherit outline-1 :height 1.15  :foreground "#51AFEF"))))
;;  '(org-level-2 ((t (:inherit outline-2 :height 1.13  :foreground "#C678DD"))))
;;  '(org-level-3 ((t (:inherit outline-3 :height 1.11  :foreground "#A9A1E1"))))
;;  '(org-level-4 ((t (:inherit outline-4 :height 1.09  :foreground "#7CC3F3"))))
;;  '(org-level-5 ((t (:inherit outline-5 :height 1.07  :foreground "#D499E5"))))
;;  '(org-level-6 ((t (:inherit outline-6 :height 1.05  :foreground "#A8D7F7"))))
;;  '(org-level-7 ((t (:inherit outline-7 :height 1.03  :foreground "#E2BBEE"))))
;;  '(org-level-8 ((t (:inherit outline-8 :height 1.01  :foreground "#DCEFFB"))))
;;  ) ;; end custom-set-faces

;;org-mode theme
;;(package-install 'org-modern)
;;(add-hook 'org-mode-hook #'org-modern-mode)
;;(add-hook 'org-agenda-finalize-hook #'org-modern-agenda)
;;(setq org-modern-star nil
;;      org-modern-list nil
;;      org-modern-table nil)

(global-org-modern-mode)

;;对齐org-mode的表格
(package-install 'valign)
(setq valign-fancy-bar 'non-nil)
(add-hook 'org-mode-hook #'valign-mode)
;;(add-hook 'markdown-mode-hook #'valign-mode)

;; 开启标题缩进
;;(add-hook 'org-mode-hook (lambda () (org-indent-mode 1)))
;; 折叠标识
(setq org-ellipsis "⌄")
;; 特殊强调标记
(setq org-hide-emphasis-markers t)

;; 替换 org-mode 下部分标题为 Unicode
(package-install 'org-superstar)
;;(setq org-superstar-leading-bullet ?\s)
(setq org-superstar-headline-bullets-list
      '("☰" "☱" "☲" "☳" "☴" "☵" "☶" "☷"))
;;(setq org-superstar-item-bullet-alist t)
(setq org-superstar-item-bullet-alist
      '((?+ . ?➤)
	(?- . ?ᐅ)
	(?* . ?⁕)))
(add-hook 'org-mode-hook (lambda () (org-superstar-mode 1)))

(provide 'init-org)
;;; init-org.el ends here
