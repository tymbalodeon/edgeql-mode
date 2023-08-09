(load! "./helpers.el")

(define-generic-mode 'edgeql-mode
  '("#")
  (edgeql-add-upcase-keywords lowercase-keywords)
  nil
  '("\\.edgeql$")
  nil
  "EdgeQL Mode")

(add-hook 'edgeql-mode-hook 'display-line-numbers-mode)
