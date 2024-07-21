;;; init-basic.el --- Load the basic configuration -*- lexical-binding: t -*-
;;; Commentary:

;; 该文件为基本配置。

;;; Code:
;; 自动补全括号
(electric-pair-mode t)
;; 编程模式下，光标在括号上时高亮另一个括号
(add-hook 'prog-mode-hook #'show-paren-mode)
;; 在 Mode line 上显示列号
(column-number-mode t)
;; 监听文件
(global-auto-revert-mode t)
;; 选中文本后输入文本会替换文本
(delete-selection-mode t)
;; 关闭启动 Emacs 时的欢迎界面
(setq inhibit-startup-message t)
;; 关闭文件自动备份
(setq make-backup-files nil)
;; 编程模式下，可以折叠代码块
(add-hook 'prog-mode-hook #'hs-minor-mode)
;; 在 Window 显示行号
(global-display-line-numbers-mode 1)
;; 显示时间
(display-time-mode 1) ; 常显
(setq display-time-24hr-format t) ; 格式
(setq display-time-day-and-date t) ; 显示时间、星期、日期
;; 隐藏菜单栏工具栏滚动条
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)
;; highlight当前行
(global-hl-line-mode 1)
;; 配置字体
(set-face-attribute 'default nil :font (font-spec :family "Hack Nerd Font Mono" :size 19))
(set-fontset-font t 'unicode (font-spec :family "Noto Color Emoji" :size 19))

(provide 'init-basic)
;;; init-basic.el ends 
