; Split a list at the nth element

(define (split lst num)
  (splitaux lst num (cons '() '(()))
  )
)

(define (splitaux lst num res)
  (cond
        ((null? lst) res)
        ((zero? num) (cons (car res) (cons lst '())))
        (else
         (splitaux (cdr lst) (- num 1) (cons (append (car res) (list (car lst))) (cdr res)))
         )
   )
)
