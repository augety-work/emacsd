;;; init-python.el --- Load the Python LSP configuration -*- lexical-binding: t -*-
;;; Commentary:

;; 该文件为Python LSP 配置。

;;; Code:
(use-package python
  :ensure f
  :defer t
  :mode ("\\.py\\'" . python-mode)
  :interpreter ("python3" . python-mode))

(use-package lsp-pyright
  :ensure t
  :hook (python-mode . (lambda ()
                          (require 'lsp-pyright)
                          (lsp-deferred))))  ; or lsp-deferred

(provide 'init-python)
;;; init-python.el ends here
