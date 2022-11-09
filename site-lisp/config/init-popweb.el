;;; init-popweb.el --- init popweb
;;; Commentary:
;;; Code:

(require 'popweb-dict-bing)
(require 'popweb-dict-youdao)

(require 'popweb-latex)
(add-hook 'org-mode-hook #'popweb-latex-mode)
;;(add-hook 'latex-mode-hook #'popweb-latex-mode)

(provide 'init-popweb)
;;; init-popweb.el ends here
