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

;;org-mode theme
(package-install 'org-modern)
;;(add-hook 'org-mode-hook #'org-modern-mode)
;;(add-hook 'org-agenda-finalize-hook #'org-modern-agenda)
(setq org-modern-star nil
      org-modern-list nil
      org-modern-table nil)

(global-org-modern-mode)

;;对齐org-mode的表格
(package-install 'valign)
(setq valign-fancy-bar 'non-nil)
(add-hook 'org-mode-hook #'valign-mode)
;;(add-hook 'markdown-mode-hook #'valign-mode)

;; 开启标题缩进
(add-hook 'org-mode-hook (lambda () (org-indent-mode 1)))
;; 折叠标识
(setq org-ellipsis "⤵")
;; 特殊强调标记
(setq org-hide-emphasis-markers t)

;; 替换 org-mode 下部分标题为 Unicode
(package-install 'org-superstar)
;;(setq org-superstar-leading-bullet ?\s)
(setq org-superstar-headline-bullets-list
      '("☰" "☱" "☲" "☳" "☴" "☵" "☶" "☷"))
(setq org-superstar-item-bullet-alist t)
(setq org-superstar-item-bullet-alist
      '((?* . ?•)
	(?+ . ?➤)
	(?- . ?ᐅ)))
(add-hook 'org-mode-hook (lambda () (org-superstar-mode 1)))

(provide 'init-org)
;;; init-org.el ends here
