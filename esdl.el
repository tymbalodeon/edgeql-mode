(load! "./helpers.el")

(defvar esdl-keywords
  (append lowercase-keywords
          '("extending"
            "link"
            "multi"
            "property"
            "required"
            "scalar"
            "type"
            "constraint")))

(define-generic-mode 'esdl-mode
  '("#")
  (edgeql-add-upcase-keywords esdl-keywords)
  '(("datetime" . 'font-lock-builtin-face)
    ("str" . 'font-lock-builtin-face)
    ("bool" . 'font-lock-builtin-face)
    ("exclusive" . 'font-lock-constant-face)
    ("int32" . 'font-lock-builtin-face))
  '("\\.esdl$")
  nil
  "EdgeDB Schema Mode")
