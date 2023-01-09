;;; init-emacs.el --- init emacs
;;; Commentary:
;;; Code:

(let (
      ;; 加载的时候临时增大`gc-cons-threshold'以加速启动速度。
      (gc-cons-threshold most-positive-fixnum)
      (gc-cons-percentage 0.6)
      ;; 清空避免加载远程文件的时候分析文件。
      (file-name-handler-alist nil))

  (with-temp-message ""
    (require 'init-elpa)
    (require 'init-config)
    (require 'lazy-load)
    (require 'init-package)
    (require 'init-org)
    (require 'init-ui)
    (require 'init-font)
    (require 'init-meow)
    (require 'init-auto-save)
    (require 'init-savehistory)
    (require 'init-lsp-bridge)
    (require 'init-grammatical-edit)
    (require 'init-key)
    ;; 可以延後加載的
    (run-with-idle-timer
     1 nil
     #'(lambda ()
	 (require 'init-disable-mouse)
	 (require 'init-blink-search)
	 (require 'init-elispfl)
	 (require 'init-tree-sitter)
	 ;;(require 'init-rime)
	 (require 'init-sis)
	 ))))

;; GC 優化 emacs 的垃圾回收行爲。
;;(setq gc-elapsed t)
;;(defmacro k-time (&rest body)
;;  "Measure and return the time it takes evaluating BODY."
;;   `(let ((time (current-time)))
;;      ,@body
;;      (float-time(time-since time))))
;; Set garbage collection threshold to 512M.
;; 設置回收閾值爲 512MB
;;(setq gc-cons-threshold #x20000000)
;; When idle for 15sec run the GC no matter what.
;; 空閒 15s 後運行 GC
;;(defvar k-gc-timer
;;  (run-with-idle-timer 15 t
;;		       (lambda ()
;;			 (message "Garbage Collector has run for %.06fsec"
;;				   (k-time (garbage-collect))))))
;;(setq gc-cons-threshold most-positive-fixnum)

(provide 'init-emacs)
;;; init-emacs.el ends here
