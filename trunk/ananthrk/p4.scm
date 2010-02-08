;find the number of elements in the list
(define (get-count arg) 
  (if (and (list? arg) (not (null? arg)))
          (+ 1 (get-count (cdr arg)))
          '0
          )
  )
