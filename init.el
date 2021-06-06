(setq inhibit-startup-message t) ; set up blank start up screen

(scroll-bar-mode -1)  ; disable visible scrollbar

(tool-bar-mode -1) ; disable toolbar

(tooltip-mode -1)  ; disable tooltips

(set-fringe-mode 6)  ; space left and right

(menu-bar-mode -1)  ; disable the menu bar

(global-display-line-numbers-mode t) ; show line numbers

(setq visible-bell t)  ; set up visible feedback

(setq make-backup-files nil) ; no backup files



(set-face-attribute 'default nil :font "JetBrainsMono Nerd Font" :height 120)


;; Initialize package sources
(require 'package)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("org" . "https://orgmode.org/elpa/")
                         ("elpa" . "https://elpa.gnu.org/packages/")))

(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)


;; Installed packaes

(use-package command-log-mode)

(use-package ivy
  :ensure t
  :diminish
  :bind (("C-s" . swiper)
         :map ivy-minibuffer-map
         ("TAB" . ivy-alt-done)	
         ("C-l" . ivy-alt-done)
         ("C-j" . ivy-next-line)
	 :map ivy-switch-buffer-map
         ("C-k" . ivy-previous-line)
         ("C-l" . ivy-done)
         ("C-d" . ivy-switch-buffer-kill)
         :map ivy-reverse-i-search-map
         ("C-k" . ivy-previous-line)
         ("C-d" . ivy-reverse-i-search-kill))
  :config
  (ivy-mode 1))

(use-package nord-theme)
(use-package dracula-theme
  :ensure t
  :config
  (load-theme 'dracula t))

(use-package cyberpunk-theme)


;; Custom key bindings

(global-set-key (kbd "<escape>") 'keyboard-escape-quit) ; make ESC quit prompts
