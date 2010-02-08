; Number of elements of a list - another solution
(define (num-elems lst)
     (if (null? lst)
      0
      (+ (num-elems (cdr lst)) 1)
  )
)      
           

