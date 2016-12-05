(package-initialize)

;; Packages used:
;; - auto-complete
;; - magit
;; - ruby-tools
;; - web-mode

(custom-set-faces)

(custom-set-variables
 ;; Nice theme
 '(ansi-color-names-vector
   ["#2e3436" "#a40000" "#4e9a06" "#c4a000" "#204a87" "#5c3566" "#729fcf" "#eeeeec"])
 '(custom-enabled-themes (quote (wheatgrass)))
 '(package-selected-packages (quote (ruby-tools auto-complete web-mode magit))))

;; Packages from external sources
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))

;; Auto-completion
(ac-config-default)

;; No ugly toolbar
(tool-bar-mode 0)

;; Never use tabs
(setq indent-tabs-mode nil)

;; Deletion of trailing whitespace
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Show connecting parentheses with no delay
(show-paren-mode 1)
(setq show-paren-delay 0)

;; From web-mode website
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))

;; Clojure files
(add-to-list 'auto-mode-alist '("\\.clj\\'" . clj-mode))

;; Two spaces as indentation in templates
(defun proper-indentation-hook ()
  (setq web-mode-markup-indent-offset 2))
(add-hook 'web-mode-hook  'proper-indentation-hook)

(add-hook 'ruby-mode-hook  'ruby-tools-mode)
