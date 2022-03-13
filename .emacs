;packages
(require 'package)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))
(setq package-enable-at-startup nil)
(package-initialize)

(setq-default truncate-lines t)
(setq-default global-visual-line-mode t)
(setq inhibit-splash-screen t)

;backups
(setq create-lockfiles nil)
(setq backup-directory-alist `(("." . "~/.backup")))
(setq delete-old-versions t kept-new-versions 6 kept-old-versions 2 version-control t)

(setq backup-by-copying t)
(setq backup-by-copying-when-linked t)
(setq backup-by-copying-when-mismatch t)


;block collapse
(add-hook 'c-mode-common-hook #'hs-minor-mode)
(add-hook 'prog-mode-hook #'hs-minor-mode)

;auto complete
(add-hook 'after-init-hook 'global-company-mode)
(setq ess-use-company t)

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
;(load-theme 'doom-old-hope t)

;theme DOOM DARK
;(load-theme 'doom-dark+ t)
;(set-background-color "#0a0a0a") ;background ;linux
;(set-face-attribute 'hl-line nil :background 'nil :box 'nil) ;line higlight

;theme SOLARIZED
(load-theme 'doom-solarized-dark-high-contrast t)

;theme BLACK AND WHITE
;(load-theme 'tao-yin t)
;;(set-background-color "#040404") ;background ;windows
;(set-background-color "#080808") ;background ;linux
;(set-foreground-color "#bababa") ;foreground
;(set-face-attribute 'hl-line nil :background 'nil :foreground 'nil :inverse-video 'nil) ;line higlight
;(set-face-attribute 'font-lock-builtin-face nil :background "#000" :foreground "#fff" :weight 'bold) ;#define, #include
;(set-face-attribute 'font-lock-constant-face nil :background "#222" :foreground "#000" :weight `light) ;constants, true / false
;(set-face-attribute 'font-lock-comment-face nil :background 'nil :foreground "#333" :underline 'nil) ;comments
;(set-face-attribute 'font-lock-string-face nil :background "#000" :foreground 'nil :underline 't) ;strings
;(set-face-attribute 'font-lock-negation-char-face nil :background 'nil :foreground "#fff") ;negation-char
;(set-face-attribute 'font-lock-preprocessor-face nil :background "#fff" :foreground "#000") ;preprocessor
;(set-face-attribute 'font-lock-function-name-face nil :background "#eee" :foreground "#000" :weight `bold) ;function names
;(set-face-attribute 'font-lock-warning-face nil :background "#f00") ;warning
;(set-face-attribute 'region nil :background 'nil :foreground 'nil) ;select highlight
;(set-face-attribute 'font-lock-type-face    nil :background "#444" :foreground "#000" :weight 'bold) ;types
;(set-face-attribute 'font-lock-keyword-face nil :background "#000" :foreground "#fff" :weight `bold) ;keywords (struct, enum, if, while)
;(set-face-attribute 'font-lock-variable-name-face nil :background 'nil :foreground 'nil :weight 'normal) ;variable declare

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
;(set-face-attribute 'default nil :family "xos4 Terminus" :height 160)
;(set-face-attribute 'default nil :family "xos4 Terminus" :height 100)
(set-face-attribute 'default nil :family "misc Tamsyn" :height 180)
;(set-face-attribute 'default nil :family "misc Tamsyn" :height 140)
;(set-face-attribute 'default nil :family "misc Tamsyn" :height 120)
;(set-face-attribute 'default nil :family "misc Tamsyn" :height 110)

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
(setq default-tab-width 4)
(setq backward-delete-char-untabify-method 'hungry)
(setq-default c-default-style "linux" c-basic-offset 4 tab-width 4 indent-tabs-mode t)

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
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#002732" "#ec423a" "#93a61a" "#c49619" "#3c98e0" "#e2468f" "#3cafa5" "#8d9fa1"])
 '(custom-safe-themes
   '("4f1d2476c290eaa5d9ab9d13b60f2c0f1c8fa7703596fa91b235db7f99a9441b" "cf922a7a5c514fad79c483048257c5d8f242b21987af0db813d3f0b138dfaf53" "f6665ce2f7f56c5ed5d91ed5e7f6acb66ce44d0ef4acfaa3a42c7cfe9e9a9013" "1f1b545575c81b967879a5dddc878783e6ebcca764e4916a270f9474215289e5" "a82ab9f1308b4e10684815b08c9cac6b07d5ccb12491f44a942d845b406b0296" "234dbb732ef054b109a9e5ee5b499632c63cc24f7c2383a849815dacc1727cb6" "97db542a8a1731ef44b60bc97406c1eb7ed4528b0d7296997cbb53969df852d6" "cbdf8c2e1b2b5c15b34ddb5063f1b21514c7169ff20e081d39cf57ffee89bc1e" "6c98bc9f39e8f8fd6da5b9c74a624cbb3782b4be8abae8fd84cbc43053d7c175" "028c226411a386abc7f7a0fba1a2ebfae5fe69e2a816f54898df41a6a3412bb5" "613aedadd3b9e2554f39afe760708fc3285bf594f6447822dd29f947f0775d6c" "f91395598d4cb3e2ae6a2db8527ceb83fed79dbaf007f435de3e91e5bda485fb" "da186cce19b5aed3f6a2316845583dbee76aea9255ea0da857d1c058ff003546" "a9a67b318b7417adbedaab02f05fa679973e9718d9d26075c6235b1f0db703c8" "7a7b1d475b42c1a0b61f3b1d1225dd249ffa1abb1b7f726aec59ac7ca3bf4dae" "1d5e33500bc9548f800f9e248b57d1b2a9ecde79cb40c0b1398dec51ee820daf" default))
 '(exwm-floating-border-color "#011417")
 '(fci-rule-color "#62787f")
 '(highlight-tail-colors
   ((("#0e332f" "#0e332f" "green")
	 . 0)
	(("#06343d" "#06343d" "brightcyan")
	 . 20)))
 '(jdee-db-active-breakpoint-face-colors (cons "#01323d" "#3c98e0"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#01323d" "#93a61a"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#01323d" "#56697A"))
 '(objed-cursor-color "#ec423a")
 '(pdf-view-midnight-colors (cons "#8d9fa1" "#002732"))
 '(rustic-ansi-faces
   ["#002732" "#ec423a" "#93a61a" "#c49619" "#3c98e0" "#e2468f" "#3cafa5" "#8d9fa1"])
 '(vc-annotate-background "#002732")
 '(vc-annotate-color-map
   (list
	(cons 20 "#93a61a")
	(cons 40 "#a3a019")
	(cons 60 "#b39b19")
	(cons 80 "#c49619")
	(cons 100 "#cb811c")
	(cons 120 "#d36c1f")
	(cons 140 "#db5823")
	(cons 160 "#dd5247")
	(cons 180 "#df4c6b")
	(cons 200 "#e2468f")
	(cons 220 "#e54472")
	(cons 240 "#e84356")
	(cons 260 "#ec423a")
	(cons 280 "#c64b4a")
	(cons 300 "#a1555a")
	(cons 320 "#7b5f6a")
	(cons 340 "#62787f")
	(cons 360 "#62787f")))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
