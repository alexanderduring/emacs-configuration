; --------------------------------------
; Emacs configuration file
; Edited by Alexander During
; --------------------------------------

; Add directory 'elisp' for loading extensions
(add-to-list 'load-path "~/.emacs.d/elisp")

(autoload 'php-mode "php-mode" "Major mode for editing php code." t)
(add-to-list 'auto-mode-alist '("\\.php[34]?\\'\\|\\.phtml\\'" . php-mode))

; enable highlighting of matching parenthesis, disable delay
(show-paren-mode 1)
(setq show-paren-delay 0)

; Set code style and indentation
(setq
  c-default-style "bsd"
  c-basic-offset 4
)

; Disable tab indentation
(setq-default indent-tabs-mode nil)

; Set tab width
(setq tab-width 4)

; Turn on font highlighting
(global-font-lock-mode t)
(setq font-lock-maximum-decoration t)

; Line by line scrolling
(setq scroll-step 1)

; Show line and column number in the mode line
(line-number-mode 1)
(column-number-mode 1)

; Make ö, ü, ß and such characters work
(set-language-environment 'german)

; Save space
(menu-bar-mode nil)

; Utf-8 encoding
(prefer-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)

; No startup screen
(setq inhibit-startup-screen t)

;disable backup
(setq backup-inhibited t)


; --- Configuration for ediff ---

; Add command line switch (usage: emacs -ediff file1 file2)
(defun command-line-diff (switch)
  (let
    ((file1 (pop command-line-args-left))
     (file2 (pop command-line-args-left)))
    (ediff file1 file2)))

(add-to-list 'command-switch-alist '("-ediff" . command-line-diff))

; Split window horizontally
(setq ediff-split-window-function 'split-window-horizontally)
