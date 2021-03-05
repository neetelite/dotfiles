;packages
(require 'package)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))
(setq package-enable-at-startup nil)
(package-initialize)

;evil
(require 'evil)
(evil-mode t)
;(define-key evil-insert-state-map (kbd "TAB") 'tab-to-tab-stop); deletes spaces instead of tabs

;bars
(global-hl-line-mode 1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(menu-bar-mode -1)

;bell
(defun nil-bell ())
(setq ring-bell-function 'ignore)
(setq ring-bell-function 'nil-bell)

;middle mouse button
(global-unset-key [mouse-2])

;undo limit
(setq undo-limit 20000000)
(setq undo-strong-limit 40000000)

;determing os
(setq kaede-aquamacs (featurep 'aquamacs))
(setq kaede-linux (featurep 'x))
(setq kaede-win32 (not (or kaede-aquamacs kaede-linux)))

;todo and log files
(setq todo-file "k:/game/source/todo.txt")
(setq log-file "k:/game/source/log.txt")

;transparency
;(set-frame-parameter (selected-frame) 'alpha '(100 . 100)) ;//focused / unfocused

;theme
(load-theme 'tao-yin t)

;colors
;(set-background-color "#040404") ;background ;windows
(set-background-color "#080808") ;background ;linux
(set-foreground-color "#bababa") ;foreground
(set-face-attribute 'hl-line nil :background 'nil :box 'nil) ;line higlight
(set-face-attribute 'font-lock-builtin-face nil :background "#000" :foreground "#fff") ;#define, #include
(set-face-attribute 'font-lock-constant-face nil :background "#555" :foreground "#000") ;constants, true / false
(set-face-attribute 'font-lock-comment-face nil :background 'nil :foreground "#555" :underline 'nil) ;comments
(set-face-attribute 'font-lock-string-face nil :background "#111" :underline 't) ;strings
(set-face-attribute 'font-lock-keyword-face nil :foreground "#fff" :overline 'nil) ;keywords
(set-face-attribute 'font-lock-negation-char-face nil :background "#111" :foreground "#fff") ;negation-char
(set-face-attribute 'font-lock-preprocessor-face nil :background "#eee" :foreground "#000") ;preprocessor
(set-face-attribute 'font-lock-warning-face nil :background "#FF6969") ;warning
(set-face-attribute 'font-lock-type-face nil :background "#444" :underline 'nil) ;types
(set-face-attribute 'font-lock-function-name-face nil :background 'nil :box 'nil) ;function names
(set-face-attribute 'font-lock-variable-name-face nil :background 'nil :underline 'nil) ;variable declare
(set-face-attribute 'region nil :background 'nil :foreground 'nil) ;select highlight

;evil colors
(setq evil-emacs-state-cursor '("red" box))
(setq evil-normal-state-cursor '("#FFF" box))
(setq evil-insert-state-cursor '("#FFF" box))
(setq evil-visual-state-cursor '("#FFF" box))
(setq evil-operator-state-cursor '("#FFF" box))
(setq evil-replace-state-cursor '("#FFF" box))

;note and todo
(setq fixme-modes '(c++-mode c-mode emacs-lisp-mode))

(make-face 'highlight-ff0000)
(make-face 'highlight-ff4000)
(make-face 'highlight-ff8000)
(make-face 'highlight-ffbf00)
(make-face 'highlight-ffff00)
(make-face 'highlight-bfff00)
(make-face 'highlight-80ff00)
(make-face 'highlight-40ff00)
(make-face 'highlight-00ff00)
(make-face 'highlight-00ff40)
(make-face 'highlight-00ff80)
(make-face 'highlight-00ffbf)
(make-face 'highlight-00ffff)
(make-face 'highlight-00bfff)
(make-face 'highlight-0080ff)
(make-face 'highlight-0040ff)
(make-face 'highlight-0000ff)
(make-face 'highlight-4000ff)
(make-face 'highlight-8000ff)
(make-face 'highlight-bf00ff)
(make-face 'highlight-ff00ff)
(make-face 'highlight-ff00bf)
(make-face 'highlight-ff0080)
(make-face 'highlight-ff0040)

;Highlights
(mapc (lambda (mode)
	(font-lock-add-keywords mode
				'(("\\<\\(FIXME\\)" 1 'highlight-ff0000 t)
				  ("\\<\\(TEMPORARY\\)" 1 'highlight-ff4000 t)
				  ("\\<\\(REDUNDANT\\)" 1 'highlight-ff8000 t)
				  ("\\<\\(INCOMPLETE\\)" 1 'highlight-ffbf00 t)
				  ("\\<\\(IMPLEMENT\\)" 1 'highlight-ffff00 t)
				  ("\\<\\(SPACE\\)" 1 'highlight-bfff00 t)
				  ("\\<\\(SPEED\\)" 1 'highlight-80ff00 t)
				  ("\\<\\(40ff00\\)" 1 'highlight-40ff00 t)
				  ("\\<\\(HARDEN\\)" 1 'highlight-00ff00 t)
				  ("\\<\\(00ff40\\)" 1 'highlight-00ff40 t)
				  ("\\<\\(CLEAN\\)" 1 'highlight-00ff80 t)
				  ("\\<\\(NOCHECKIN\\)" 1 'highlight-00ffbf t)
				  ("\\<\\(00ffff\\)" 1 'highlight-00ffff t)
				  ("\\<\\(SOURCE\\)" 1 'highlight-00bfff t)
				  ("\\<\\(NOTE\\)" 1 'highlight-0080ff t)
				  ("\\<\\(0040ff\\)" 1 'highlight-0040ff t)
				  ("\\<\\(0000ff\\)" 1 'highlight-0000ff t)
				  ("\\<\\(4000ff\\)" 1 'highlight-4000ff t)
				  ("\\<\\(8000ff\\)" 1 'highlight-8000ff t)
				  ("\\<\\(bf00ff\\)" 1 'highlight-bf00ff t)
				  ("\\<\\(ff00ff\\)" 1 'highlight-ff00ff t)
				  ("\\<\\(LEAK\\)" 1 'highlight-ff00bf t)
				  ("\\<\\(LEARN\\)" 1 'highlight-ff0080 t)
				  ("\\<\\(TODO\\)" 1 'highlight-ff0040 t))))
      fixme-modes)

(set-face-attribute 'highlight-ff0000 'nil :background "#ff0000" :foreground "#000")
(set-face-attribute 'highlight-ff4000 'nil :background "#ff4000" :foreground "#000")
(set-face-attribute 'highlight-ff8000 'nil :background "#ff8000" :foreground "#000")
(set-face-attribute 'highlight-ffbf00 'nil :background "#ffbf00" :foreground "#000")
(set-face-attribute 'highlight-ffff00 'nil :background "#ffff00" :foreground "#000")
(set-face-attribute 'highlight-bfff00 'nil :background "#bfff00" :foreground "#000")
(set-face-attribute 'highlight-80ff00 'nil :background "#80ff00" :foreground "#000")
(set-face-attribute 'highlight-40ff00 'nil :background "#40ff00" :foreground "#000")
(set-face-attribute 'highlight-00ff00 'nil :background "#00ff00" :foreground "#000")
(set-face-attribute 'highlight-00ff40 'nil :background "#00ff40" :foreground "#000")
(set-face-attribute 'highlight-00ff80 'nil :background "#00ff80" :foreground "#000")
(set-face-attribute 'highlight-00ffbf 'nil :background "#00ffbf" :foreground "#000")
(set-face-attribute 'highlight-00ffff 'nil :background "#00ffff" :foreground "#000")
(set-face-attribute 'highlight-00bfff 'nil :background "#00bfff" :foreground "#000")
(set-face-attribute 'highlight-0080ff 'nil :background "#0080ff" :foreground "#000")
(set-face-attribute 'highlight-0040ff 'nil :background "#0040ff" :foreground "#000")
(set-face-attribute 'highlight-0000ff 'nil :background "#0000ff" :foreground "#000")
(set-face-attribute 'highlight-4000ff 'nil :background "#4000ff" :foreground "#000")
(set-face-attribute 'highlight-8000ff 'nil :background "#8000ff" :foreground "#000")
(set-face-attribute 'highlight-bf00ff 'nil :background "#bf00ff" :foreground "#000")
(set-face-attribute 'highlight-ff00ff 'nil :background "#ff00ff" :foreground "#000")
(set-face-attribute 'highlight-ff00bf 'nil :background "#ff00bf" :foreground "#000")
(set-face-attribute 'highlight-ff0080 'nil :background "#ff0080" :foreground "#000")
(set-face-attribute 'highlight-ff0040 'nil :background "#ff0040" :foreground "#000")

;font
;(set-face-attribute 'default nil :family "xos4 Terminus" :height 122)
(set-face-attribute 'default nil :family "misc Tamsyn" :height 130)

;compilation
(setq compilation-directory-locked nil)
(scroll-bar-mode -1)
(setq shift-select-mode nil)
(setq enable-local-variables nil)
(setq kaede-font "outline-DejaVu Sans Mono")

(when kaede-win32
  (setq kaede-makescript "build.bat")
  (setq kaede-font "outline-Liberation Mono")
)

(when kaede-aquamacs
  (cua-mode 0)
  (osx-key-mode 0)
  (tabbar-mode 0)
  (setq mac-command-modifier 'meta)
  (setq x-select-enable-clipboard t)
  (setq aquamacs-save-options-on-quit 0)
  (setq special-display-regexps nil)
  (setq special-display-buffer-names nil)
  (define-key function-key-map [return] [13])
  (setq mac-command-key-is-meta t)
  (scroll-bar-mode nil)
  (setq mac-pass-command-to-system nil)
  (setq kaede-makescript "./build.macosx")
)

(when kaede-linux
  (setq kaede-makescript "./build.sh")
  (display-battery-mode 1)
)

;style
(electric-pair-mode 1)

;tabs
(setq default-tab-width 8)
(setq backward-delete-char-untabify-method 'hungry)
(setq-default c-default-style "linux" c-basic-offset 8 tab-width 8 indent-tabs-mode t)

;close all buffers
(defun close-all-buffers ()
  (interactive)
  (mapc 'kill-buffer (buffer-list)))

;remove trailing white space before saving
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;display line a column number in toolbar
(setq line-number-mode t)
(setq column-number-mode t)

;show matching parenthesis
(show-paren-mode t)

;display question in 'y/n' instead of 'yes/no'
(fset 'yes-or-no-p 'y-or-n-p)

;load path
;(setq load-path (cons (expand-file-name "~/.emacs.d/") load-path))

;delete selected text when typing
(delete-selection-mode 1)

;newline on saved files
(setq require-final-newline t)

;backup directory
(setq
 backup-by-copying t
 backup-directory-alist
 '(("." . "~/.emacs-backups"))
 delete-old-versions t
 kept-new-versions 6
 kept-old-versions 2
 version-control t)

;c tools
(load-library "view")
(require 'cc-mode)
(require 'ido)
(require 'compile)
(ido-mode t)

;buffers and split and startup
(defun kaede-ediff-setup-windows (buffer-A buffer-B buffer-C control-buffer)
  (ediff-setup-windows-plain buffer-A buffer-B buffer-C control-buffer)
)
(setq ediff-window-setup-function 'kaede-ediff-setup-windows)
(setq ediff-split-window-function 'split-window-horizontally)

;setup compilation mode
(defun kaede-big-fun-compilation-hook ()
  (make-local-variable 'truncate-lines)
  (setq truncate-lines nil)
)

(add-hook 'compilation-mode-hook 'kaede-big-fun-compilation-hook)

;load todo file
(defun load-todo ()
  (interactive)
  (find-file kaede-todo-file)
)

;load log file
(defun load-log ()
  (interactive)
  (find-file kaede-log-file)
  (if (boundp 'longlines-mode) ()
    (longlines-mode 1)
    (longlines-show-hard-newlines))
  (if (equal longlines-mode t) ()
    (longlines-mode 1)
    (longlines-show-hard-newlines))
  (end-of-buffer)
  (newline-and-indent)
  (insert-timeofday)
  (newline-and-indent)
  (newline-and-indent)
  (end-of-buffer)
)

;insert time of day
(defun insert-timeofday ()
   (interactive "*")
   (insert (format-time-string "---------------- %a, %d %b %y: %I:%M%p")))

; Accepted file extensions and their appropriate modes
(setq auto-mode-alist
      (append
       '(("\\.cpp$"    . c++-mode)
         ("\\.hin$"    . c++-mode)
         ("\\.cin$"    . c++-mode)
         ("\\.inl$"    . c++-mode)
         ("\\.rdc$"    . c++-mode)
         ("\\.h$"    . c++-mode)
         ("\\.c$"   . c++-mode)
         ("\\.cc$"   . c++-mode)
         ("\\.c8$"   . c++-mode)
         ("\\.txt$" . indented-text-mode)
         ("\\.emacs$" . emacs-lisp-mode)
         ("\\.gen$" . gen-mode)
         ("\\.ms$" . fundamental-mode)
         ("\\.m$" . objc-mode)
         ("\\.mm$" . objc-mode)
         ) auto-mode-alist))

;save buffer after untabifying it
(defun kaede-save-buffer ()
  "Save the buffer after untabifying it."
  (interactive)
  (save-excursion
    (save-restriction
      (widen)
      (untabify (point-min) (point-max))))
  (save-buffer))

;maximize frame
(defun maximize-frame ()
    "Maximize the current frame"
     (interactive)
     (when kaede-aquamacs (aquamacs-toggle-full-frame))
     (when kaede-win32 (w32-send-sys-command 61488)))

;remeber position in buffers
(require 'saveplace)
(setq-default save-place t)

;compilation
(setq compilation-context-lines 0)
(setq compilation-error-regexp-alist
    (cons '("^\\([0-9]+>\\)?\\(\\(?:[a-zA-Z]:\\)?[^:(\t\n]+\\)(\\([0-9]+\\)) : \\(?:fatal error\\|warnin\\(g\\)\\) C[0-9]+:" 2 3 nil (8))
     compilation-error-regexp-alist))

(defun find-project-directory-recursive ()
  "Recursively search for a makefile."
  (interactive)
  (if (file-exists-p kaede-makescript) t
      (cd "../")
      (find-project-directory-recursive)))

(defun lock-compilation-directory ()
  "The compilation process should NOT hunt for a makefile"
  (interactive)
  (setq compilation-directory-locked t)
  (message "Compilation directory is locked."))

(defun unlock-compilation-directory ()
  "The compilation process SHOULD hunt for a makefile"
  (interactive)
  (setq compilation-directory-locked nil)
  (message "Compilation directory is roaming."))

(defun find-project-directory ()
  "Find the project directory."
  (interactive)
  (setq find-project-from-directory default-directory)
  (switch-to-buffer-other-window "*compilation*")
  (if compilation-directory-locked (cd last-compilation-directory)
  (cd find-project-from-directory)
  (find-project-directory-recursive)
  (setq last-compilation-directory default-directory)))

(defun make-without-asking ()
  "Make the current build."
  (interactive)
  (if (find-project-directory) (compile kaede-makescript))
  (other-window 1))

;commands
(set-variable 'grep-command "grep -irHn ")
(when kaede-win32
    (set-variable 'grep-command "findstr -s -n -i -l "))

;keybinds
;switch file
(define-key global-map "\ef" 'find-file)
(define-key global-map "\eF" 'find-file-other-window)

;switch buffer
;(global-set-key (read-kbd-macro "\eb")  'ido-switch-buffer)
;(global-set-key (read-kbd-macro "\eB")  'ido-switch-buffer-other-window)

;todo / log
(define-key global-map "\et" 'load-todo)
(define-key global-map "\eT" 'load-log)

;windows
(define-key global-map "\ep" 'maximize-frame)
(define-key global-map "\ew" 'other-window)

;build
(define-key global-map "\em" 'make-without-asking)

;buliding
(define-key global-map [f9] 'first-error)
(define-key global-map [f10] 'previous-error)
(define-key global-map [f11] 'next-error)

(define-key global-map "\en" 'next-error)
(define-key global-map "\eN" 'previous-error)

;lines
(define-key global-map "\eg" 'goto-line)
(define-key global-map "\ej" 'imenu)

;buffers
(define-key global-map "\er" 'revert-buffer)
(define-key global-map "\ek" 'kill-this-buffer)
(define-key global-map "\es" 'save-buffer)

;smooth scroll
(setq scroll-step 3)

;clock
(display-time)

;fullscreen
;(toggle-frame-fullscreen)

;disable backup
(setq backup-inhibited t)
;disable auto save
(setq auto-save-default nil)
