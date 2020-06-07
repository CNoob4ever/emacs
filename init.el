(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	          '("melpa" . "https://melpa.org/packages/"))
		  (package-initialize)

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
	(package-refresh-contents)
		(package-install 'use-package))

(org-babel-load-file (expand-file-name "~/.emacs.d/emacs-init.org"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "red3" "ForestGreen" "yellow3" "blue" "magenta3" "DeepSkyBlue" "gray50"])
 '(custom-enabled-themes (quote (wheatgrass)))
 '(flycheck-gcc-include-path (quote ("/home/haluk/Example/NetFrameWork/event/include")))
 '(package-selected-packages
   (quote
    (magit wgrep-ag wgrep org-pdfview pdf-tools undo-tree auto-yasnippet counsel yasnippet which-key use-package try org-bullets moe-theme iedit ggtags flycheck color-theme beacon auto-complete ace-window))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0)))))
