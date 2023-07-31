(defvar edgeql-constants
  '("AGGREGATE"
    "ALTER"
    "AND"
    "ANY"
    "COMMIT"
    "CREATE"
    "DELETE"
    "DETACHED"
    "DISTINCT"
    "DROP"
    "ELSE"
    "EMPTY"
    "EXISTS"
    "FALSE"
    "FILTER"
    "FUNCTION"
    "GET"
    "GROUP"
    "IF"
    "ILIKE"
    "IN"
    "INSERT"
    "IS"
    "LIKE"
    "LIMIT"
    "MODULE"
    "NOT"
    "OFFSET"
    "OR"
    "ORDER"
    "OVER"
    "PARTITION"
    "ROLLBACK"
    "SELECT"
    "SET"
    "SINGLETON"
    "START"
    "TRUE"
    "UPDATE"
    "UNION"
    "WITH"))

(defvar edgeql-keywords
  '("other-keyword" "another-keyword"))

(defvar edgeql-tab-width 4 "Width of a tab for EDGEQL mode")

(defvar edgeql-font-lock-defaults
  `((
     ;; stuff between double quotes
     ("\"\\.\\*\\?" . font-lock-string-face)
     ;; ; : , ; { } =>  @ $ = are all special elements
     (":\\|,\\|;\\|{\\|}\\|=>\\|@\\|$\\|=" . font-lock-keyword-face)
     ( ,(regexp-opt edgeql-keywords 'words) . font-lock-builtin-face)
     ( ,(regexp-opt edgeql-constants 'words) . font-lock-constant-face)
     )))

(define-derived-mode edgeql-mode fundamental-mode "EDGEQL script"
  "EDGEQL mode is a major mode for editing EDGEQL files"
  (setq font-lock-defaults edgeql-font-lock-defaults)
  (when edgeql-tab-width
    (setq tab-width edgeql-tab-width))
  (setq comment-start "#")
  (setq comment-end "")
  (modify-syntax-entry ?# "< b" edgeql-mode-syntax-table)
  (modify-syntax-entry ?\n "> b" edgeql-mode-syntax-table))

(provide 'edgeql-mode)
