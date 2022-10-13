;;; init-dirvish.el --- init for dirvish
;;; Commentary:
;;; Code:

(require 'dirvish)			;; dirvish 基本包
(require 'dirvish-extras)		;;
(require 'dirvish-widgets)		;;
(require 'dirvish-yank)			;;
(require 'dirvish-emerge)		;;
(require 'dirvish-peek)			;; minibuffer 預覽
(require 'dirvish-vc)			;; 版本控制擴展
(require 'dirvish-icons)		;; 
(require 'dirvish-side)			;; 側邊欄
(require 'dirvish-ls)			;; 
(require 'dirvish-fd)			;; 
(require 'dirvish-subtree)		;; 樹狀瀏覽
(require 'dirvish-history)		;; 訪問歷史
(require 'dirvish-quick-access)		;; 顯示經常訪問位置快捷鍵
(require 'dirvish-collapse)		;; 
(require 'dirvish-narrow)		;; 

(dirvish-override-dired-mode)
(setq dirvish-quick-access-entries ; It's a :custom option
 '(("h" "~/"                          "Home")
   ("d" "~/Downloads/"                "Downloads")
   ("m" "/mnt/"                       "Drives")
   ("t" "~/.local/share/Trash/files/" "TrashCan")))
(dirvish-peek-mode) ; Preview files in minibuffer
(setq dirvish-mode-line-height 25)
(setq dirvish-header-line-format
      '(:left (path) :right (free-space)))
(setq dirvish-mode-line-format
      '(:left (sort file-time " " file-size symlink) :right (omit yank index)))
(setq dirvish-attributes
      '(all-the-icons file-size collapse subtree-state vc-state git-msg))
(setq delete-by-moving-to-trash t)
(setq dired-listing-switches
      "-l --almost-all --human-readable --time-style=long-iso --group-directories-first --no-group")
;; 關閉 dirvish 中自動換行
(add-hook 'dirvish-find-entry-hook
	  (lambda (&rest _) (setq-local truncate-lines t)))
(add-hook 'dirvish-directory-view-mode-hook #'dirvish-subtree-toggle)

;; globalkey
(global-set-key (kbd "C-c f") 'dirvish-fd)

;; keymap
(define-key dirvish-mode-map (kbd "a") 'dirvish-quick-access)
(define-key dirvish-mode-map (kbd "f") 'dirvish-file-info-menu)
(define-key dirvish-mode-map (kbd "y") 'dirvish-yank-menu)
(define-key dirvish-mode-map (kbd "N") 'dirvish-file-info-menu)
(define-key dirvish-mode-map (kbd "^") 'dirvish-history-last)
(define-key dirvish-mode-map (kbd "h") 'dirvish-history-jump)
(define-key dirvish-mode-map (kbd "s") 'dirvish-quicksort)
(define-key dirvish-mode-map (kbd "v") 'dirvish-vc-menu)
(define-key dirvish-mode-map (kbd "TAB") 'dirvish-subtree-toggle)
(define-key dirvish-mode-map (kbd "M-f") 'dirvish-history-go-forward)
(define-key dirvish-mode-map (kbd "M-b") 'dirvish-history-go-backward)
(define-key dirvish-mode-map (kbd "M-l") 'dirvish-ls-switches-menu)
(define-key dirvish-mode-map (kbd "M-m") 'dirvish-mark-menu)
(define-key dirvish-mode-map (kbd "M-t") 'dirvish-layout-toggle)
(define-key dirvish-mode-map (kbd "M-s") 'dirvish-setup-menu)
(define-key dirvish-mode-map (kbd "M-e") 'dirvish-emerge-menu)
(define-key dirvish-mode-map (kbd "M-j") 'dirvish-fd-jump)
(define-key dirvish-mode-map (kbd "?") 'dirvish-dispatch)

;;;; dirvish
;;(use-package dirvish
;;  :init
;;  (dirvish-override-dired-mode)
;;  :custom
;;  (dirvish-quick-access-entries ; It's a :custom option
;;   '(("h" "~/"                          "Home")
;;     ("d" "~/Downloads/"                "Downloads")
;;     ("m" "/mnt/"                       "Drives")
;;     ("t" "~/.local/share/Trash/files/" "TrashCan")))
;;  :config
;;  (dirvish-peek-mode) ; Preview files in minibuffer
;;  (setq dirvish-mode-line-height 25)
;;  (setq	dirvish-header-line-format
;;	'(:left (path) :right (free-space))
;;	dirvish-mode-line-format
;;        '(:left (sort file-time " " file-size symlink) :right (omit yank index)))
;;  (setq dirvish-attributes
;;        '(all-the-icons file-size collapse subtree-state vc-state git-msg))
;;  (setq delete-by-moving-to-trash t)
;;  (setq dired-listing-switches
;;        "-l --almost-all --human-readable --time-style=long-iso --group-directories-first --no-group")
;;  :bind ; Bind `dirvish|dirvish-side|dirvish-dwim' as you see fit
;;  (("C-c f" . dirvish-fd)
;;   :map dirvish-mode-map ; Dirvish inherits `dired-mode-map'
;;   ("a"   . dirvish-quick-access)
;;   ("f"   . dirvish-file-info-menu)
;;   ("y"   . dirvish-yank-menu)
;;   ("N"   . dirvish-narrow)
;;   ("^"   . dirvish-history-last)
;;   ("h"   . dirvish-history-jump) ; remapped `describe-mode'
;;   ("s"   . dirvish-quicksort)    ; remapped `dired-sort-toggle-or-edit'
;;   ("v"   . dirvish-vc-menu)      ; remapped `dired-view-file'
;;   ("TAB" . dirvish-subtree-toggle)
;;   ("M-f" . dirvish-history-go-forward)
;;   ("M-b" . dirvish-history-go-backward)
;;   ("M-l" . dirvish-ls-switches-menu)
;;   ("M-m" . dirvish-mark-menu)
;;   ("M-t" . dirvish-layout-toggle)
;;   ("M-s" . dirvish-setup-menu)
;;   ("M-e" . dirvish-emerge-menu)
;;   ("M-j" . dirvish-fd-jump)))

(provide 'init-dirvish)
;;; init-dirvish.el ends here
