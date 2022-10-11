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
    (require 'init-startup)
    (require 'init-elpa)
    (require 'init-package)
    (require 'init-config)
    (require 'init-org)
    (require 'init-ui)
    (require 'init-kbd)
    (require 'init-meow)
    (require 'init-lsp-bridge)

    ;; 可以延後加載的
    (run-with-idle-timer
     1 nil
     #'(lambda ()
	 (require 'init-tree-sitter)
	 ))))

(provide 'init-emacs)
;;; init-emacs.el ends here
