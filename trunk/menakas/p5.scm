; Reverse a list
(define (myrev lst)
  (if (null? lst)
      lst
      (append (myrev (cdr lst)) (list (car lst)))
     )
  )