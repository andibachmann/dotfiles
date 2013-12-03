;;

;; for further customizations have a look at this:
;; * http://www.aaronbedra.com/emacs.d/
;;

;; Emacs (>24) Package Repositories
;; Package Repos
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))
;; just for convenience
(add-to-list 'auto-mode-alist '("emacs" . emacs-lisp-mode))

;; coffee-mode
;; 
;; Details found here:  http://ozmm.org/posts/coffee_mode.html
;; (add-to-list 'load-path "~/.elisp/coffee-mode")
;; (require 'coffee-mode)
(add-to-list 'auto-mode-alist '("\\.coffee$" . coffee-mode))
(add-to-list 'auto-mode-alist '("Cakefile" . coffee-mode))

;;; file associations for python
(setq auto-mode-alist
      (cons '("\\.py$" . python-mode) auto-mode-alist))
(setq interpreter-mode-alist
      (cons '("python" . python-mode)
            interpreter-mode-alist))
;; magit mode
;; GIT mode for emacs
;;(require 'magit)
(autoload 'magit-status "magit" nil t)

;; SASS mode
(autoload 'sass-mode "sass-mode" "Major mode for editing sass files")
(add-to-list 'auto-mode-alist '("\\.sass" . sass-mode))

;;; autoload python mode
(autoload 'python-mode "python-mode" "Python editing mode." t)
(add-to-list 'auto-mode-alist '("\\.py$" . python-mode))

;;; autolad for yaml-mode
(autoload 'yaml-mode "yaml-mode" "Major mode for editing yaml files")
(add-to-list 'auto-mode-alist '("\\.yaml$" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

;;; autoload for markdown-mode
(autoload 'markdown-mode "markdown-mode" 
  "Major mode for editing Markdown Files" t)
(setq auto-mode-alist 
      (cons '("\\.md" . markdown-mode) auto-mode-alist))

;;; autoload for rdoc-mode
(autoload 'rdoc-mode "rdoc-mode" 
  "Major mode for editing RDOC files" t)
(setq auto-mode-alist 
      (cons '("\\.rdoc" . rdoc-mode) auto-mode-alist))

;;; autoload for json-mode
(autoload 'json-mode "json-mode" 
  "Major mode for editing JSON files" t)
(setq auto-mode-alist 
      (cons '("\\.json" . json-mode) auto-mode-alist))

;;;;;
;;; graphviz dot mode
(autoload 'graphviz-dot-mode "graphviz-dot-mode" "Major mode for editing dot files")
(add-to-list 'auto-mode-alist '("\\.dot$" . graphviz-dot-mode))

;;;;;;;
;; Setup puppet-mode for autoloading
;;
(autoload 'puppet-mode "puppet-mode" "Major mode for editing puppet manifests")
(add-to-list 'auto-mode-alist '("\\.pp$" . puppet-mode))

; rvm
;(require `rvm)
;(rvm-use-default) ;; by default, use rvm's default ruby

; ruby mode
(autoload 'ruby-mode "ruby-mode" "Load ruby-mode" t)
(setq auto-mode-alist
      (append (list '("\\.rb$"   . ruby-mode)
                    '("Rakefile" . ruby-mode)
                    '("Gemfile" . ruby-mode)
                    '("Guardfile" . ruby-mode)
                    '("\\.rake$" . ruby-mode)
                    '("\\.gemspec" . ruby-mode))
              auto-mode-alist))

;;; enables outlining for ruby
;;; You may also want to bind hide-body, hide-subtree, show-substree,
;;; show-all, show-children, ... to some keys easy folding and unfolding
(add-hook 'ruby-mode-hook
              '(lambda ()
                 (outline-minor-mode)
                 (setq outline-regexp " *\\(def \\|class\\|module\\)")))

;;; list of outline functions:
;;; hide-sublevels, show-all, outline-previous-visible-heading,
;;; outline-next-visible-heading, hide-subtree, show-onelevel, 
;;; outline-backward-same-level, outline-forward-same-level, hide-subtree
;;; show-subtree
;;;
;;; outline-mode configurations
(set-display-table-slot
     standard-display-table
     'selective-display
     (let ((face-offset (* (face-id font-lock-keyword-face) (expt 2 19))))
       (vconcat (mapcar (lambda (c) (+ face-offset c)) "More..."))))

;;;
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(c-basic-offset 2)
 '(case-fold-search nil)
 '(coffee-tab-width 2)
 '(column-number-mode t)
 '(current-language-environment "UTF-8")
 '(default-input-method "latin-1-postfix")
 '(font-use-system-font t)
 '(fringe-mode (quote (nil . 0)) nil (fringe))
 '(graphviz-dot-indent-width 2)
 '(graphviz-dot-view-command "dotty %s")
 '(icicle-buffer-configs (quote (("project1" "*.rb" nil nil nil nil) ("All" nil nil nil nil icicle-case-string-less-p) ("Files" nil nil (lambda (bufname) (buffer-file-name (get-buffer bufname))) nil icicle-case-string-less-p) ("Files and Scratch" nil nil (lambda (bufname) (buffer-file-name (get-buffer bufname))) ("*scratch*") icicle-case-string-less-p) ("All, *...* Buffers Last" nil nil nil nil icicle-buffer-sort-*\.\.\.*-last))))
 '(icicle-command-abbrev-alist nil)
 '(icicle-reminder-prompt-flag 6)
 '(indicate-buffer-boundaries (quote left))
 '(indicate-empty-lines t)
 '(inhibit-startup-screen t)
 '(js-indent-level 2)
 '(ruby-deep-arglist nil)
 '(ruby-deep-indent-paren nil)
 '(safe-local-variable-values (quote ((encoding . utf-8))))
 '(scroll-bar-mode (quote right))
 '(sh-basic-offset 2)
 '(sh-indentation 2)
 '(show-paren-mode t)
 '(speedbar-directory-button-trim-method (quote trim))
 '(speedbar-use-images nil)
 '(sql-product (quote oracle))
 '(sql-server "oracle.geo.uzh.ch")
 '(standard-indent 2)
 '(tab-width 2)
 '(tcl-indent-level 2)
 '(text-mode-hook (quote (turn-on-auto-fill text-mode-hook-identify)))
 '(tool-bar-mode nil)
 '(uniquify-buffer-name-style (quote forward) nil (uniquify)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "black" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 98 :width normal :foundry "bitstream" :family "Courier 10 Pitch"))))
 '(cursor ((t (:background "dim gray"))))
 '(font-lock-builtin-face ((t (:foreground "#F8F8F8"))))
 '(font-lock-comment-face ((t (:italic t :foreground "#AEAEAE"))))
 '(font-lock-constant-face ((t (:foreground "#D8FA3C"))))
 '(font-lock-doc-string-face ((t (:foreground "DarkOrange"))))
 '(font-lock-function-name-face ((t (:foreground "#00FFFF"))))
 '(font-lock-keyword-face ((t (:foreground "#22DE22"))))
 '(font-lock-preprocessor-face ((t (:foreground "Aquamarine"))))
 '(font-lock-reference-face ((t (:foreground "SlateBlue"))))
 '(font-lock-regexp-grouping-backslash ((t (:foreground "#E9C062"))))
 '(font-lock-regexp-grouping-construct ((t (:foreground "red"))))
 '(font-lock-string-face ((t (:foreground "#EEaa33"))))
 '(font-lock-type-face ((t (:foreground "#00bbee" :weight bold))))
 '(font-lock-variable-name-face ((t (:foreground "#FF6400"))))
 '(font-lock-warning-face ((t (:bold t :foreground "Pink"))))
 '(fringe ((t (:background "gray")))))

;; font-lock-builtin-face
;; font-lock-comment-face
;; font-lock-comment-delimiter-face
;; font-lock-constant-face
;; font-lock-doc-face
;; font-lock-doc-string-face
;; font-lock-function-name-face
;; font-lock-keyword-face
;; font-lock-negation-char-face
;; font-lock-preprocessor-face
;; font-lock-string-face
;; font-lock-type-face
;; font-lock-variable-name-face
;; font-lock-warning-face

;; adjust BACKSPACE and DELETE behaviour
(normal-erase-is-backspace-mode 1)

;; key settings
; set magit-status key
(global-set-key "\C-ci" 'magit-status)
; set C-c]
(global-set-key "\C-c]" 'comment-region)
; set C-c[
(global-set-key "\C-c[" 'uncomment-region)
; set f10
(global-set-key [f10] 'goto-line)
;set f11
(global-set-key [f11] 'what-line)
;set f12
(global-set-key [f12] 'compile)

;Make Text mode the default mode for new buffers.
(setq default-major-mode 'text-mode)

; no nasty ~-files
(setq make-backup-files nil)

; set font-lock-mode on in C mode
(setq c-mode-hook 'font-lock-mode)

; set font-lock-mode on in TCL mode
(setq tcl-mode-hook 'font-lock-mode)

; tabs are always expanded to spaces
(setq-default indent-tabs-mode nil)

;; region replacing by typing
(delete-selection-mode t)



