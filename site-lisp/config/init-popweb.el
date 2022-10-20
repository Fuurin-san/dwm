;;; init-popweb.el --- init popweb
;;; Commentary:
;;; Code:

(require 'popweb-dict-bing)
(require 'popweb-dict-youdao)


;;(require 'popweb-latex)

;;(add-hook 'latex-mode-hook #'popweb-latex-mode)

;;(setq popweb-proxy-type "socks5")
;;(setq popweb-proxy-host "127.0.0.1")
;;(setq popweb-proxy-port "20170")

(lazy-load-global-keys
 '(("l" . popweb-dict-bing-input)
   (";" . popweb-dict-bing-pointer))
 "init-popweb"
 "C-c")

(provide 'init-popweb)
;;; init-popweb.el ends here
