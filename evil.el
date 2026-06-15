(unless (package-installed-p 'evil)
  (package-install 'evil))

(require 'evil)
(evil-mode 1)

(defvar mach/leader (make-sparse-keymap))
(define-key evil-normal-state-map (kbd "SPC") mach/leader)

(defun mach/dired-defdir ()
  (interactive)
  (dired default-directory))
(define-key mach/leader (kbd "e") 'mach/dired-defdir)
(define-key mach/leader (kbd "s") #'split-window-right)
(define-key mach/leader (kbd "t") #'tab-new)
(define-key mach/leader (kbd "h") #'windmove-left)
(define-key mach/leader (kbd "j") #'windmove-down)
(define-key mach/leader (kbd "k") #'windmove-up)
(define-key mach/leader (kbd "l") #'windmove-right)
(with-eval-after-load 'dired
  (evil-define-key 'normal dired-mode-map
    "h" #'dired-up-directory
    "l" #'dired-find-file))

(define-prefix-command 'mach/z-map)
(global-set-key (kbd "z") 'mach/z-map)
