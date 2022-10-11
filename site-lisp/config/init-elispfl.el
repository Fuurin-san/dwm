;;; init-elispfl.el --- highlight emacs-lisp
;;; Commentary:
;;; Code:

(with-eval-after-load 'elisp-mode
  (require 'elispfl)
  (elispfl-mode))


(provide 'init-elispfl)
;;; init-elispfl.el ends here
