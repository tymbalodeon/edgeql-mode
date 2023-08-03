(load! "./helpers.el")

(defvar esdl-keywords
  (edgeql-add-upcase-keywords
   (append lowercase-keywords
           '("abstract"
             "access"
             "after"
             "constraint"
             "default"
             "do"
             "each"
             "extending"
             "for"
             "global"
             "link"
             "multi"
             "policy"
             "property"
             "required"
             "scalar"
             "trigger"
             "type"))))

(defvar esdl-types
  '("bool"
    "datetime"
    "int32"
    "json"
    "str"
    "uuid"))

(defvar esdl-builtins '("exclusive"))

(defvar esdl-tab-width 4 "Width of a tab for ESDL mode")

(defvar esdl-font-lock-defaults
  `(((,(regexp-opt esdl-builtins 'words) . font-lock-builtin-face)
     (,(regexp-opt esdl-keywords 'words) . font-lock-keyword-face)
     (,(regexp-opt esdl-types 'words) . font-lock-type-face))))

(define-derived-mode esdl-mode prog-mode "EdgeDB Schema"
  "Major mode for editing EdgeDB Schema definition files"
  (setq font-lock-defaults esdl-font-lock-defaults)
  (when esdl-tab-width
    (setq tab-width esdl-tab-width))
  (setq comment-start "#")
  (setq comment-end ""))

(add-to-list 'auto-mode-alist '("\\.esdl$" . esdl-mode))

(add-hook 'esdl-mode-hook 'display-line-numbers-mode)

(provide 'esdl-mode)
