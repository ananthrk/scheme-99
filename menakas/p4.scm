; Number of elements of a list
(define (num-elems lst)
     (num-aux lst 0)
)
(define (num-aux lst num)
  (if (null? lst)
      num
      (num-aux (cdr lst) (+ num 1))
  )
)      
           

