;;; init-keybindings.el -- Load the shortcut key configuration -*- lexical-binding: t -*-
;;; Commentary:
;; 该文件为快捷键配置。

;;; Code:

;;; functions
(defun next-ten-lines()
  "Move cursor to next 10 lines."
  (interactive)
  (next-line 10))

(defun previous-ten-lines()
  "Move cursor to previous 10 lines."
  (interactive)
  (previous-line 10))

;;; binding
;; 剪切
(global-set-key (kbd "M-w") 'kill-region)
;; 复制
(global-set-key (kbd "C-w") 'kill-ring-save)
;; 为选中的代码加注释/去注释
(global-set-key (kbd "C-c '") 'comment-or-uncomment-region)
;; 光标向下移动 10 行
(global-set-key (kbd "M-n") 'next-ten-lines)
;; 光标向上移动 10 行
(global-set-key (kbd "M-p") 'previous-ten-lines)

(provide 'init-keybindings)
;;; init-keybindings.el ends here
