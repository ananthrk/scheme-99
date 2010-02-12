; Duplicate list elements

(define (dupl lst)
  (if (null? lst)
      '()
      (append (list (car lst) (car lst)) (dupl (cdr lst)))
  )
)
