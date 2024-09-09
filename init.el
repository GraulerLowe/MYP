(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(helm-firefox helm-icons all-the-icons-ibuffer all-the-icons-gnus all-the-icons-dired yasnippet flycheck magit projectile ace-window subatomic-theme standard-themes spacegray-theme haskell-mode git-commit doom-themes doom company-ebdb company-box all-the-icons-nerd-fonts all-the-icons-ivy-rich all-the-icons-ivy all-the-icons-completion all afternoon-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Desactivar la barra de menú
(menu-bar-mode -1)

;; Desactivar la barra de herramientas
(tool-bar-mode -1)

;; Desactivar la barra de desplazamiento
(scroll-bar-mode -1)

;; Activar el resaltado de sintaxis
(global-font-lock-mode t)

;;Barra de Tutorial de emacs
(setq inhibit-startup-screen t)

;; Activar el resaltado de líneas activas
(global-hl-line-mode t)

;; Mostrar números de línea
(global-display-line-numbers-mode)

;; Mostrar número de columna
(column-number-mode t)

;; Mostrar corchetes coincidentes
(show-paren-mode t)

;; Utilizar espacios en lugar de tabuladores
(setq-default indent-tabs-mode nil)

;; Definir el ancho de tabulación
(setq-default tab-width 4)

;; Desactivar los archivos de respaldo
(setq make-backup-files nil)

;; Desactivar los archivos de autoguardado
(setq auto-save-default nil)

;; Desactivar el sonido de advertencia
(setq ring-bell-function 'ignore)

;; Ajustar el esquema de colores
(load-theme 'dracula t)
;;(load-theme 'catppuccin :no-confirm)    ;
;;(setq doom-theme 'catppuccin)
;;(setq catppuccin-flavor 'macchiato) ;; or 'latte, 'macchiato, or 'mocha
 ; ;(catppuccin-reload)
;; Cambiar el color de fondo
;;(set-face-background 'default "#011220")

;; Ajustar el tamaño de la fuente
(set-face-attribute 'default nil :height 100)

;; Habilitar el auto-completado
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)

;; Configurar el atajo de teclado para abrir el archivo de configuración
(global-set-key (kbd "C-c C-c") (lambda () (interactive) (find-file "~/.emacs.d/init.el")))

;; Añadir repositorios de paquetes MELPA
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

;; Habilitar el modo de visualización del número de columna
(column-number-mode)

;; Habilitar el modo de línea visual (visual-line-mode)
(global-visual-line-mode)

;; Usar paquete all-the-icons
(use-package all-the-icons
  :ensure t)

;; Configuración de iconos para nombres de paquetes
(defun my-get-package-icons (pkg)
  "Obtener el icono asociado al nombre del paquete."
  (if (package-installed-p pkg)
      (all-the-icons-icon-for-mode 'emacs-lisp-mode)
    (all-the-icons-icon-for-mode 'package-inactive-mode)))

(setq package-selected-packages
   '(all-the-icons-ibuffer all-the-icons-gnus all-the-icons-dired yasnippet flycheck magit projectile ace-window subatomic-theme standard-themes spacegray-theme haskell-mode git-commit doom-themes doom company-ebdb company-box all-the-icons-nerd-fonts all-the-icons-ivy-rich all-the-icons-ivy all-the-icons-completion all afternoon-theme))

(setq package-menu--new-package-mark (my-get-package-icons 'package))
(setq package-menu--built-in-package-mark (my-get-package-icons 'package))
(setq package-menu--dependency-package-mark (my-get-package-icons 'package))
(setq package-menu--upgrade-package-mark (my-get-package-icons 'package))
(setq package-menu--deleted-package-mark (my-get-package-icons 'package))

;;Manejo de ventanas y buffers
(use-package ace-window
  :ensure t
  :bind ("C-x o" . ace-window))

(use-package ivy
  :ensure t
  :config
  (ivy-mode 1))

;;Manejo de proyectos
(use-package projectile
  :ensure t
  :config
  (projectile-mode +1))

;;Herramientas externas
(use-package magit
  :ensure t)

(use-package yasnippet
  :ensure t
  :config (yas-global-mode 1))

;; Configuración personalizada generada por Custom



;;Doom modeline
(doom-modeline-mode 1)
;;Theme
(require 'doom-themes)

;; Atajo de teclado para abrir una terminal
(global-set-key (kbd "C-c t") 'ansi-term)

(set-face-attribute 'default nil :font "Monospace-11")

(setq temporary-file-directory "/tmp")

(use-package rust-mode
  :ensure t
  :hook (rust-mode . (lambda () (setq indent-tabs-mode nil))))

(use-package lsp-mode
  :ensure t
  :hook (rust-mode . lsp)
  :commands lsp
  :config
  (setq lsp-rust-server 'rust-analyzer))

(use-package lsp-ui
  :ensure t
  :commands lsp-ui-mode)

(use-package haskell-mode
  :ensure t
  :hook (haskell-mode . (lambda () (setq indent-tabs-mode nil)))
  :config
  ;; Configuración adicional para haskell-mode si es necesario
  )
;;(set-fontset-font t 'unicode "All the Icons")

(set-face-attribute 'variable-pitch nil :font "Fira Code-12")
(set-face-attribute 'fixed-pitch nil :font "Fira Code-12")
(set-face-attribute 'default nil :font "Source Code Pro-12")
(set-fontset-font t 'unicode "Fira Code" nil 'prepend)



