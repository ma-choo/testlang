(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(load (expand-file-name "machoo/option" user-emacs-directory))
(load (expand-file-name "machoo/evil" user-emacs-directory))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "JetBrains Mono" :foundry "JB" :slant normal :weight regular :height 113 :width normal)))))

(add-to-list 'custom-theme-load-path
             (expand-file-name "themes" user-emacs-directory))
(mapc #'disable-theme custom-enabled-themes)
(load-theme 'anang t)
