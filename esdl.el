(load! "./helpers.el")

(defvar esdl-keywords
  (append lowercase-keywords
          '("constraint"
            "default"
            "extending"
            "global"
            "link"
            "multi"
            "property"
            "required"
            "scalar"
            "type")))

(define-generic-mode 'esdl-mode
  '("#")
  (edgeql-add-upcase-keywords esdl-keywords)
  '(("bool" . 'font-lock-type-face)
    ("datetime" . 'font-lock-type-face)
    ("exclusive" . 'font-lock-variable-name-face)
    ("int32" . 'font-lock-type-face)
    ("str" . 'font-lock-type-face))
  '("\\.esdl$")
  nil
  "EdgeDB Schema Mode")
