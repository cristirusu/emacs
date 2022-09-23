(setq inhibit-startup-message t)

(scroll-bar-mode -1)        ; Disable visible scrollbar
(tool-bar-mode -1)          ; Disable the toolbar
(tooltip-mode -1)           ; Disable tooltips
(set-fringe-mode 10)        ; Give some breathing room
;;(menu-bar-mode -1)          ; Disable the menu bar

;; Set up the visible bell
(setq visible-bell t)

(global-display-line-numbers-mode 1)

;; Set font
(set-face-attribute 'default nil :font "Anka/Coder" :height 160)

;; Initialize package sources
(require 'package)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("org" . "https://orgmode.org/elpa/")
                         ("elpa" . "https://elpa.gnu.org/packages/")))

(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

;; Initialize use-package on non-Linux platforms
(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)


;; Set theme
(use-package all-the-icons)
(use-package kaolin-themes
  :config
  (load-theme 'kaolin-shiva t)
  (kaolin-treemacs-theme))


;; Load specific custom configs from the elisp directory
(add-to-list 'load-path "~/.emacs.d/elisp/")

(load-library "vertico-init")

