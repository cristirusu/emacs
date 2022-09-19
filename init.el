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

;; Set theme
(use-package kaolin-themes
  :config
  (load-theme 'kaolin-shiva t)
  (kaolin-treemacs-theme))
