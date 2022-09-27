;;; init-startup.el --- setting for emacs start-config
;;; Commentary:
;;; Code:

;; 設置系統編碼。
;;(prefer-coding-system 'utf-8)
;;(set-default-coding-systems 'utf-8)
;;(set-terminal-coding-system 'utf-8)
;;(set-keyboard-coding-system 'utf-8)
;;(setq default-buffer-file-coding-system 'utf-8) ;;default-buffer-file-coding-system is a void variable
(progn(set-language-environment "UTF-8")
      (setq system-time-locale "C"))

;; GC 優化 emacs 的垃圾回收行爲。
;; 
(setq gc-elapsed t)
(defmacro k-time (&rest body)
  "Measure and return the time it takes evaluating BODY."
   `(let ((time (current-time)))
      ,@body
      (float-time(time-since time))))
;; Set garbage collection threshold to 512M.
;; 設置回收閾值爲 512MB
(setq gc-cons-threshold #x20000000)
;; When idle for 15sec run the GC no matter what.
;; 空閒 15s 後運行 GC
(defvar k-gc-timer
  (run-with-idle-timer 15 t
		       (lambda ()
			 (message "Garbage Collector has run for %.06fsec"
				   (k-time (garbage-collect))))))
;;(setq gc-cons-threshold most-positive-fixnum)

(tool-bar-mode -1)
;;turn off tool bar

(scroll-bar-mode -1)
;;turn off scroll bar
;;(global-linum-mode t)

(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode t)
;;line number

(menu-bar-mode -1)
;;turn off menu-bar

(setq-default cursor-type '(bar . 2))
;;set cursor type

(setq inhibit-splash-screen 1)

(fset 'yes-or-no-p 'y-or-n-p)
;;set yes-->y  no-->n

;;sound off
(setq ring-bell-function 'ignore)
(blink-cursor-mode -1)

(provide 'init-startup.el)
;;; init-startup.el ends here
