;;; init-font.el --- set emacs font
;;; Commentary:
;;; Code:

(defun centaur-setup-fonts ()
  "Setup fonts."
  (when (display-graphic-p)
    ;;;; Set default font
    ;;(cl-loop for font in '("Cascadia Code" "Fira Code" "Jetbrains Mono"
    ;;                       "SF Mono" "Hack" "Source Code Pro" "Menlo"
    ;;                       "Monaco" "DejaVu Sans Mono" "Consolas")
    ;;         when (font-installed-p font)
    ;;         return (set-face-attribute 'default nil
    ;;                                    :family font
    ;;                                    :height (cond (sys/macp 130)
    ;;                                                  (sys/win32p 110)
    ;;                                                  (t 100))))

    ;; Set default font
    (cl-loop for font in '("Jetbrains Mono")
             when (font-installed-p font)
             return (set-face-attribute 'default nil
                                        :family font
                                        :height 100))

    ;; Set mode-line font
    ;; (cl-loop for font in '("Menlo" "SF Pro Display" "Helvetica")
    ;;          when (font-installed-p font)
    ;;          return (progn
    ;;                   (set-face-attribute 'mode-line nil :family font :height 120)
    ;;                   (when (facep 'mode-line-active)
    ;;                     (set-face-attribute 'mode-line-active nil :family font :height 120))
    ;;                   (set-face-attribute 'mode-line-inactive nil :family font :height 120)))

    ;; Specify font for all unicode characters
    ;;(cl-loop for font in '("Segoe UI Symbol" "Symbola" "Symbol")
    ;;         when (font-installed-p font)
    ;;         return (set-fontset-font t 'unicode font nil 'prepend))

    ;; Emoji
    (cl-loop for font in '("Noto Color Emoji")
             when (font-installed-p font)
             return (if (>= emacs-major-version 28)
                        (set-fontset-font t 'emoji (font-spec :family font) nil 'prepend)
                      (set-fontset-font t 'symbol (font-spec :family font) nil 'prepend)))

    ;; Specify font for Chinese characters
    (cl-loop for font in '("WenQuanYi Micro Hei")
             when (font-installed-p font)
             return (progn
                      (setq face-font-rescale-alist `((,font . 1.1)))
                      (set-fontset-font t '(#x4e00 . #x9fff) (font-spec :family font))))))

(defun font-installed-p (font-name)
  "Check if font with FONT-NAME is available."
  (find-font (font-spec :name font-name)))

(centaur-setup-fonts)
(add-hook 'window-setup-hook #'centaur-setup-fonts)
(add-hook 'server-after-make-frame-hook #'centaur-setup-fonts)

(provide 'init-font)
;;; init-font.el ends here
