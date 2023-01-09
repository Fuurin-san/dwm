;;; init-savehistory.el --- configuration emacs history
;;; Commentary:
;;; Require:

;;; Code:
(savehist-mode 1)
(setq enable-recursive-minibuffers t
      history-length 1000
      savehist-autosave-interval 300
      savehist-additional-variables '(mark-ring
				      global-mark-ring
				      search-ring
				      regexp-search-ring
				      extended-command-history))

;;auto-save-cursor-history
(save-place-mode 1)

(provide 'init-savehistory)
;;; init-savehistory.el ends here
