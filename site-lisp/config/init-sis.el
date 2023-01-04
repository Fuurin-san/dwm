;;; init-sis.el --- init sis
;;; Commentary:
;;; Code:

(require 'sis)

(sis-ism-lazyman-config "1" "2" 'fcitx5)

;; enable the /cursor color/ mode
(setq sis-other-cursor-color "pink")
(sis-global-cursor-color-mode t)
;; enable the /respect/ mode
(sis-global-respect-mode t)
;; enable the /context/ mode for all buffers
(sis-global-context-mode t)
;; enable the /inline english/ mode for all buffers
(setq sis-inline-single-space-close t)
(setq sis-inline-tighten-head-rule 0)
(setq sis-inline-tighten-tail-rule 0)
(sis-global-inline-mode t)

(add-hook 'meow-insert-mode-hook
	  (lambda (&rest _)
            (if meow-insert-mode
		nil
              (sis-set-english))))

(provide 'init-sis)
;;; init-sis.el ends here
