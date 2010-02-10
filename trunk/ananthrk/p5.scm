;reverse a list
(define (reverse-list arg) 
  (if (null? arg)
      arg
      (append (reverse-list (cdr arg)) (list (car arg)))
      )
  )