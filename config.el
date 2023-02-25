(require 'package) ;; Emacs builtin

;; set package.el repositories
(setq package-archives
'(
   ("org" . "https://orgmode.org/elpa/")
   ("gnu" . "https://elpa.gnu.org/packages/")
   ("melpa" . "https://melpa.org/packages/")
))

;; initialize built-in package management
(package-initialize)

;; update packages list if we are on a new install
(unless package-archive-contents
  (package-refresh-contents))

;; a list of pkgs to programmatically install
;; ensure installed via package.el
(setq my-package-list '(use-package))

;; programmatically install/ensure installed
;; pkgs in your personal list
(dolist (package my-package-list)
  (unless (package-installed-p package)
    (package-install package)))

;; Basic
(setq user-full-name "Ido Merenstein"
      user-mail-address "m.ido@campus.technion.ac.il")

(recentf-mode 1)
(setq recentf-max-menu-items 25)
(setq recentf-max-saved-items 25)

(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)

(setenv "PATH" (shell-command-to-string "echo -n $PATH"))

;; https://systemcrafters.cc/emacs-from-scratch/key-bindings-and-evil/
(defun rune/evil-hook ()
  (dolist (mode '(custom-mode
                  eshell-mode
                  git-rebase-mode
                  erc-mode
                  circe-server-mode
                  circe-chat-mode
                  circe-query-mode
                  sauron-mode
                  term-mode))
    (add-to-list 'evil-emacs-state-modes mode)))


(use-package evil
  :init
  (setq evil-want-integration t)
  (setq evil-want-keybinding nil)
  (setq evil-want-C-u-scroll t)
  (setq evil-want-C-i-jump nil)
  (require 'evil)
  :hook (evil-mode . rune/evil-hook)
  :config
  (evil-mode 1)
  (define-key evil-insert-state-map (kbd "C-g") 'evil-normal-state)
  (define-key evil-insert-state-map (kbd "C-h") 'evil-delete-backward-char-and-join)
  (evil-set-undo-system 'undo-redo)

  ;; Use visual line motions even outside of visual-line-mode buffers
  (evil-global-set-key 'motion "j" 'evil-next-visual-line)
  (evil-global-set-key 'motion "k" 'evil-previous-visual-line)

  (evil-set-initial-state 'messages-buffer-mode 'normal)
  (evil-set-initial-state 'dashboard-mode 'normal))

(use-package evil-collection
  :after evil
  :ensure t
  :config
  (evil-collection-init))

(use-package counsel
  :after ivy
  :config (counsel-mode))

(use-package ivy
  :defer 0.1
  :diminish
  :bind (("C-c C-r" . ivy-resume)
         ("C-x B" . ivy-switch-buffer-other-window))
  :custom
  (ivy-count-format "(%d/%d) ")
  (ivy-use-virtual-buffers t)
  :config (ivy-mode))

;;(use-package ivy-rich
  ;;:after ivy
  ;;:custom
  ;;(ivy-virtual-abbreviate 'full
                          ;;ivy-rich-switch-buffer-align-virtual-buffer t
                          ;;ivy-rich-path-style 'abbrev)
  ;;:config
  ;;(ivy-set-display-transformer 'ivy-switch-buffer
                               ;;'ivy-rich-switch-buffer-transformer))

(use-package swiper
  :after ivy
  :bind (("C-s" . swiper)
         ("C-r" . swiper)))

(use-package avy
  :ensure t
  :config
  (require 'avy))

;; set leader key in normal state
(evil-set-leader nil (kbd "SPC"))

;; Leap.nvim like motion (avy-goto-char-2)

(evil-define-key 'normal 'global (kbd "s") #'evil-avy-goto-char-2)

;; Basic movement keybindings
(evil-define-key 'normal 'global (kbd "<leader>:") 'execute-extended-command)
(evil-define-key 'normal 'global (kbd "<leader>.") 'counsel-find-file)

(evil-define-key 'normal 'global (kbd "<leader>fs") 'save-buffer)
(evil-define-key 'normal 'global (kbd "<leader>fr") 'counsel-recentf)

;; Source: https://www.emacswiki.org/emacs/misc-cmds.el
(defun revert-buffer-no-confirm ()
    "Revert buffer without confirmation."
    (interactive)
    (revert-buffer :ignore-auto :noconfirm))

;; Source: https://emacs.stackexchange.com/questions/53196/how-to-quickly-revert-the-buffer
(defun reload-file-preserve-point ()
  (interactive)
  (when (or (not (buffer-modified-p))
            (y-or-n-p "Reverting will discard changes. Proceed?"))
    (save-excursion
      (revert-buffer t t t))
    (setq buffer-undo-list nil)
    (message "Buffer reverted")))

(evil-define-key 'normal 'global (kbd "<leader>bk") 'kill-this-buffer)
(evil-define-key 'normal 'global (kbd "<leader>bp") 'previous-buffer)
(evil-define-key 'normal 'global (kbd "<leader>bn") 'next-buffer)
(evil-define-key 'normal 'global (kbd "<leader>br") 'reload-file-preserve-point)

(defun split-window-move-right()
  (interactive)
  (split-window-right)
  (windmove-right))

(evil-define-key 'normal 'global (kbd "<leader>wV") 'split-window-move-right)
(evil-define-key 'normal 'global (kbd "<leader>wc") 'delete-window)
(evil-define-key 'normal 'global (kbd "<leader>wl") 'windmove-right)
(evil-define-key 'normal 'global (kbd "<leader>wh") 'windmove-left)
(evil-define-key 'normal 'global (kbd "<leader>wk") 'windmove-up)
(evil-define-key 'normal 'global (kbd "<leader>wj") 'windmove-down)


;; Dired Keybindings
(evil-define-key 'normal 'global (kbd "<leader>dj") #'dired-jump)
(evil-define-key 'normal 'global (kbd "<leader>dp") #'peep-dired)
(evil-define-key 'normal 'global (kbd "<leader>dv") #'dired-view-file)

(defun macos/open-in-new-kitty-window ()
  (interactive)
  (shell-command "open -a kitty $PWD" nil nil))

(evil-define-key 'normal 'global (kbd "<leader>ok") #'macos/open-in-new-kitty-window)

(evil-define-key 'normal dired-mode-map
  (kbd "M-RET") 'dired-display-file
  (kbd "h") 'dired-up-directory
  (kbd "l") 'dired-find-file
  (kbd "m") 'dired-mark
  (kbd "t") 'dired-toggle-marks
  (kbd "u") 'dired-unmark
  (kbd "C") 'dired-do-copy
  (kbd "D") 'dired-do-delete
  (kbd "J") 'dired-goto-file
  (kbd "M") 'dired-do-chmod
  (kbd "O") 'dired-do-chown
  (kbd "P") 'dired-do-print
  (kbd "R") 'dired-do-rename
  (kbd "T") 'dired-do-touch
  ;;(kbd "Y") 'dired-copy-filenamecopy
  (kbd "Z") 'dired-do-compress
  (kbd "+") 'dired-create-directory
  (kbd "-") 'dired-up-directory

  ;; This makes the evil leader key work in dired
  (kbd "SPC") nil
  )

(use-package org-babel
  :ensure t)
