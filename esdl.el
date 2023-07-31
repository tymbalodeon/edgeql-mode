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
  nil
  '("\\.esdl$")
  nil
  "EdgeDB Schema Mode")
