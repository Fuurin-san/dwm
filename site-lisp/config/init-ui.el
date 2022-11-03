;;; init-vi.el --- setting emacs ui
;;; Commentary:
;;; Code:

;;set theme
;;(use-package gruvbox-theme
;;  :init (load-theme 'gruvbox-dark-soft t))

;;(use-package gotham-theme
;;  :init (load-theme 'gotham 1))
(use-package doom-themes
  :init (load-theme 'doom-one 1))

(package-install 'doom-modeline)
(require 'doom-modeline)
(doom-modeline-mode 1)
;;(use-package nano-theme
;;  :init (load-theme 'nano-dark 1))

;;(package-install 'nyan-mode)
;;(setq nyan-wavy-trail t)
;;(setq nyan-animate-nyancat t)
;;(setq nyan-animation-frame-interval 0.5)
;;(nyan-mode)

;;(package-install 'gotham-theme)
;;(load-theme 'gotham 1)

;;mode-line preview file-size
;;(use-package simple
;;  :ensure nil
;;  :hook (after-init . size-indication-mode)
;;  :init
;;  (progn
;;    (setq column-number-mode t)))

;;自动选择合适的mode-line
;;(use-package smart-mode-line
;;  :init
;;  (setq sml/no-confirm-load-theme t
;;	sml/theme 'respectful)
;;  (sml/setup))

;;emacs 實現真背景透明
;;(setq default-frame-alist '(alpha-background . 50))
;;(push '(alpha-background . 100) default-frame-alist)
;;(set-frame-parameter nil 'alpha-background 80)
;;(add-to-list 'default-frame-alist '(alpha-background . 80))

;; gaps
(modify-all-frames-parameters
 '((right-divider-width . 15)
   (internal-border-width . 15)))
(dolist (face '(window-divider
                window-divider-first-pixel
                window-divider-last-pixel))
  (face-spec-reset-face face)
  (set-face-foreground face (face-attribute 'default :background)))
(set-face-background 'fringe (face-attribute 'default :background))


(provide 'init-ui)
;;; init-ui.el ends here
