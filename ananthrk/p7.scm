#lang scheme
;Flatten a nested list
;Does not handle non-list items as arguments
(define (flatten-list arg)
  (printf "Got ~a\n" arg)
  (if (null? arg)
      '()
       (if (list? (car arg))
           (append (flatten-list (car arg)) (flatten-list (cdr arg)))
           (append (cons (car arg) '()) (flatten-list (cdr arg)))
           )
       )
  )