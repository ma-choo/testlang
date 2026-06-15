(setopt initial-major-mode 'fundamental-mode)  ; default mode for the *scratch* buffer
(setopt display-time-default-load-average nil) ; this information is useless for most

;; Save history of minibuffer
(savehist-mode)

;; Fix archaic defaults
(setopt sentence-end-double-space nil)

;; Make right-click do something sensible
(when (display-graphic-p)
  (context-menu-mode))

;; Disable backup files
(setq auto-save-default nil)
(setq make-backup-files nil)
(setq gc-cons-threshold (* 50 1000 1000))

;==============================================================================;
;                           U I   S E T T I N G S                              ;
;==============================================================================;

(setq inhibit-startup-screen t)
(setq font-lock-maximum-decoration nil)

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(blink-cursor-mode -1)
(show-paren-mode 1)
(setq show-paren-delay 0.1)
(fringe-mode 0)

(global-display-line-numbers-mode 1)
(setq display-line-numbers-width 6)
;(setq display-line-numbers-grow-only nil)
(global-hl-line-mode 1)
(setq-default fill-column 80)
(global-display-fill-column-indicator-mode 1)

(setq-default truncate-lines t)

(fset 'yes-or-no-p 'y-or-n-p)              ; Short answers
(setopt line-number-mode t)                ; Show current line in modeline
(setopt column-number-mode t)              ; Show column as well
(setq use-dialog-box nil)                  ; No dialog boxes
(setopt x-underline-at-descent-line nil)   ; Prettier underlines

(setq scroll-margin 3)
(setq scroll-step 3)
(setq mouse-wheel-scroll-amount '(3))
(pixel-scroll-precision-mode -1)
(setq mouse-wheel-progressive-speed nil)
(setq scroll-conservatively 101)

(setq lazy-highlight-cleanup nil)
