(defvar lowercase-keywords
  '("aggregate"
    "alter"
    "and"
    "any"
    "commit"
    "create"
    "delete"
    "detached"
    "distinct"
    "drop"
    "else"
    "empty"
    "exists"
    "false"
    "filter"
    "function"
    "get"
    "group"
    "if"
    "ilike"
    "in"
    "insert"
    "is"
    "like"
    "limit"
    "module"
    "not"
    "offset"
    "or"
    "order"
    "over"
    "partition"
    "rollback"
    "select"
    "set"
    "singleton"
    "start"
    "true"
    "update"
    "union"
    "with"))

(defun edgeql-add-upcase-keywords (lowercase-keywords)
  (let ((keywords '()))
    (while lowercase-keywords
      (let ((keyword (car lowercase-keywords)))
        (setq keywords (append keywords (list keyword (upcase keyword)))))
      (setq lowercase-keywords (cdr lowercase-keywords)))
    keywords))
