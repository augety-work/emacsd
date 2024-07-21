;;; init-ui.el --- Load the appearance theme configuration -*- lexical-binding: t -*-
;;; Commentary:

;; 该文件为外观主题配置。

;;; Code:
(use-package doom-themes
  :config
  (setq doom-themes-enable-bold nil
	doom-themes-enable-italic t)
  (load-theme 'doom-dracula t)
  (doom-themes-treemacs-config))

(use-package all-the-icons
  :if (display-graphic-p))

(use-package smart-mode-line
  :init
  (sml/setup)
  :config
  (setq rm-blacklist
    (format "^ \\(%s\\)$"
      (mapconcat #'identity
        '("Projectile.*" "company.*" "Google"
	  "Undo-Tree" "counsel" "ivy" "yas" "WK")
         "\\|"))))

(provide 'init-ui)
;;; init-ui.el ends here
