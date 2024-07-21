;;; init-cpp.el --- Load the C/C++ LSP configuration -*- lexical-binding: t -*-
;;; Commentary:

;; 该文件为C/C++ LSP 配置。

;;; Code:
(use-package c++-mode
  :ensure f
  :functions
  c-toggle-hungry-state
  :hook
  (c-mode . lsp-deferred)
  (c++-mode . lsp-deferred)
  (c++-mode . c-toggle-hungry-state))


(provide 'init-cpp)
;;; init-cpp.el ends here
