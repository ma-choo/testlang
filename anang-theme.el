(deftheme anang "Anang theme")

(let ((bg0 "#292e39")
      (bg1 "#2e3440")
      (bg2 "#3b4252")

      (fg0 "#4c566a")
      (fg1 "#c7cdd8")
      (fg2 "#eceff4")

      (acc "#51afef")
      (cmt "#657084")
      (red "#ff6c6b"))

  (custom-theme-set-faces
   'anang

   ;; Editor
   `(default ((t (:foreground ,fg1 :background ,bg1))))
   `(cursor ((t (:background ,fg2))))
   `(fringe ((t (:background ,bg1))))
   `(region ((t (:background ,bg2))))
   `(highlight ((t (:background ,bg0))))

   ;; Line numbers
   `(line-number ((t (:foreground ,fg0 :background ,bg1))))
   `(line-number-current-line
     ((t (:foreground ,fg1 :background ,bg0))))

   ;; Color column
   `(fill-column-indicator
    ((t (:foreground ,fg0))))

   ;; Mode line
   `(mode-line
     ((t (:foreground ,fg2 :background ,acc :box nil))))
   `(mode-line-inactive
     ((t (:foreground ,fg1 :background ,bg2 :box nil))))
   `(mode-line-buffer-id
     ((t (:foreground ,fg2 :weight bold))))

   `(tab-bar
    ((t (:foreground ,fg0
	:background ,bg0
	:box nil))))

   `(tab-bar-tab
    ((t (:foreground ,fg1
	:background ,bg1
	:box nil))))

   `(tab-bar-tab-inactive
    ((t (:foreground ,fg0
	:background ,bg0
	:box nil))))

   ;; Minibuffer / completion
   `(minibuffer-prompt ((t (:foreground ,fg2))))
   `(vertical-border ((t (:foreground ,fg0))))
   `(completions-common-part ((t (:foreground ,acc))))

   ;; Search
   `(isearch
     ((t (:foreground ,fg2 :background ,acc))))
   `(lazy-highlight
     ((t (:foreground ,fg2 :background ,acc))))

   ;; Matching parens
   `(show-paren-match
     ((t (:foreground ,bg1 :background ,red))))

   ;; Comments
   `(font-lock-comment-face
     ((t (:foreground ,cmt :slant italic))))
   `(font-lock-comment-delimiter-face
     ((t (:foreground ,cmt :slant italic))))

   ;; Syntax
   `(font-lock-string-face
     ((t (:foreground ,acc))))
   `(font-lock-number-face
     ((t (:foreground ,acc))))
   `(font-lock-type-face
     ((t (:foreground ,fg2))))
   `(font-lock-keyword-face
     ((t (:foreground ,fg2))))
   `(font-lock-preprocessor-face
     ((t (:foreground ,fg2))))
   `(font-lock-function-name-face
     ((t (:foreground ,fg2))))
   `(font-lock-constant-face
     ((t (:foreground ,fg2))))
   `(font-lock-variable-name-face
     ((t (:foreground ,fg1))))

   ;; Errors
   `(error ((t (:foreground ,red))))
   `(font-lock-warning-face
     ((t (:foreground ,red))))

   ;; Org-Mode
   `(org-link
    ((t (:foreground ,acc :underline t))))
   `(org-document-title ((t (:foreground ,fg1 :weight bold))))

   `(org-level-1 ((t (:foreground ,fg1))))
   `(org-level-2 ((t (:foreground ,fg1))))
   `(org-level-3 ((t (:foreground ,fg1))))
   `(org-level-4 ((t (:foreground ,fg1))))
   `(org-level-5 ((t (:foreground ,fg1))))
   `(org-level-6 ((t (:foreground ,fg1))))
   `(org-level-7 ((t (:foreground ,fg1))))
   `(org-level-8 ((t (:foreground ,fg1))))

   `(org-block ((t (:foreground ,fg1))))
   `(org-quote ((t (:foreground ,fg1))))
   `(org-table ((t (:foreground ,fg1))))
   `(org-document-info ((t (:foreground ,fg1))))
   `(org-special-keyword ((t (:foreground ,fg1))))
   `(org-meta-line ((t (:foreground ,fg0))))
   `(org-property-value ((t (:foreground ,fg1))))
   `(org-tag ((t (:foreground ,fg1))))
   `(org-date ((t (:foreground ,fg1))))
   `(org-verbatim ((t (:foreground ,fg1))))
   `(org-code ((t (:foreground ,fg1))))
   `(org-checkbox ((t (:foreground ,fg1))))

   ;; Diff
   `(diff-added
     ((t (:foreground ,acc))))
   `(diff-removed
     ((t (:foreground ,red))))
   `(diff-changed
     ((t (:background ,bg1))))
   `(diff-refine-added
     ((t (:foreground ,fg1 :background ,acc))))))

(provide-theme 'anang)
