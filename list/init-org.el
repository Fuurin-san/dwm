;;; init-org.el --- setting of emacs org-mode
;;; Commentary:
;;; Code:

(require 'org-tempo)

;;(use-package org
;;  :pin melpa
;;  :ensure t)

;;org ToDo
(setq org-todo-keywords
      (quote ((sequence "TODO(t)" "STARTED(s)" "|" "DONE(d!/!)")
	      (sequence "WAITING(w@/!)" "SOMEDAY(S)" "|" "CANCELLED(c@/!)" "MEETING(m)" "PHONE(p)"))))

;;(use-package org-contrib
;;  :pin nongnu)

;;(require 'org-checklist)

;;收起org-mode log information
(setq org-log-done t)
(setq org-log-into-drawer t)

;;org日历
(global-set-key (kbd "C-c a") 'org-agenda)
(setq org-agenda-files '("~/Nutstore Files/note/org-note/ToDo.org"))
(setq org-agenda-span 'day)

(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/Nutstore Files/note/org-note/ToDo.org" "Workspace")
	 "* TODO [#B] %?\n  %i\n %U"
	 :empty-lines 1)))
(global-set-key (kbd "C-c r") 'org-capture)

;;设置任务等级
;;(setq org-agenda-custom-commands
;;      '(("c" "ToDo Leve"
;;	 ((tags-todo "+PRIORITY=\"A\"")))
;;	;; ...other commands here
;;	))

;;org-mode theme
;;(package-install 'org-modern)
;;(add-hook 'org-mode-hook #'org-modern-mode)

;;对齐org-mode的表格
(package-install 'valign)
(add-hook 'org-mode-hook #'valign-mode)

;;半实时渲染latex
;;(use-package org-latex-impatient
;;  :defer t
;;  :hook (org-mode . org-latex-impatient-mode)
;;  :init
;;  (setq org-latex-impatient-tex2svg-bin
;;        ;; location of tex2svg executable
;;        "~/node_modules/mathjax-node-cli/bin/tex2svg"))
;;
(provide 'init-org.el)

;;; init-org.el ends here
