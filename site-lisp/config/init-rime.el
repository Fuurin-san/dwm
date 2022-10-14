;;; init-rime.el --- init emacs-rime
;;; Commentary:
;;; Code:

(require 'rime)

(setq rime-user-data-dir "~/.config/fcitx/rime")

(setq default-input-method "rime"
      rime-show-candidate 'posframe)

(setq rime-disable-predicates				;; 临时英文模式
      '(meow-normal-mode-p				;; meow-normal-mode 下自动切换为英文
	meow-motion-mode-p				;; meow-normal-mode 下自动切换为英文
	meow-beacon-mode-p				;; meow-beacon-mode 下自动切换为英文
	meow-keypad-mode-p				;; meow-keypad-mode 下自动切换为英文
	rime-predicate-after-ascii-char-p		;; 任意英文字符串之後
	rime-predicate-in-code-string-p			;; 在代碼的字符串中，不包含註釋的字符串
	rime-predicate-ace-window-p			;; 在使用ace-window時
	rime-predicate-space-after-cc-p			;; 在中文字符且有空格之后
	rime-predicate-current-input-punctuation-p	;; 输入符号时
;;	rime-predicate-punctuation-line-begin-p		;; 在行首且有要输入符号时
	rime-predicate-current-uppercase-letter-p	;; 输入的为大写字母时
	rime-predicate-tex-math-or-command-p		;; 在 LaTex 数学环境中或输入 LaTex 命令时
	))

;; 在临时英文中强制开启中文
(define-key rime-mode-map (kbd "M-p") 'rime-force-enable)

;;(lazy-load-set-keys
;; '(
;; ("M-h" . rime--escape)
;; ("M-p" . rime--return)
;; ("M-b" . rime--backspace))
;; rime-active-mode-map)

(provide 'init-rime)
;;; init-rime.el ends here
