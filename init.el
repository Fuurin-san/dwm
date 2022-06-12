;;; init.el --- setting of emacs
;;; Commentary:
;;; Code:

;;在文件最开头添加地个 文件作用域的变量设置，设置变量的绑定方式
;; -*- lexical-binding: t -*-

;;(add-to-list 'load-path
;;	     (expand-file-name (concat user-emacs-directory "lisp")))
(add-to-list 'load-path "~/.emacs.d/list/")
;;(add-to-list 'load-path "~/.emacs.d/elisp/company-english-helper")


(setq custom-file (expand-file-name "custom.el" user-emacs-directory))

(require 'init-startup.el)
(require 'init-elpa.el)
(require 'init-package.el)
(require 'init-config.el)
(require 'init-org.el)
;(require 'init-ui.el)
(require 'init-ui.el)
(require 'init-kbd.el)
(require 'init-meow)
;;(require 'company-english-helper)





(when (file-exists-p custom-file)
    (load-file custom-file))

;;; init.el ends here
