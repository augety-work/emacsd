;;; init-evil.el --- Load the evil configuration -*- lexical-binding: t -*-
;;; Commentary:

;; 该文件为evil配置。

;;; Code:
(use-package evil
  :init (evil-mode))

(use-package powerline-evil
  :config
  (powerline-evil-vim-color-theme)
  (display-time-mode t))

(require 'evil-leader)
(global-evil-leader-mode)
(evil-leader/set-leader ",")

(evil-leader/set-key
  "e" 'find-file
  "b" 'switch-to-buffer
  "k" 'kill-buffer)

(provide 'init-evil)
;;; init-ui.el ends here
