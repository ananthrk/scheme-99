;find the kth element in the list
(define (get-element arg k) 
    (if (and (list? arg) (> k 0) (<= k (length arg)))
        (list-ref arg (- k 1))))

;find the kth element in the list without using the in-built list-ref procedure
(define (get-element-2 arg k)
  (if (or (null? arg) (not (list? arg)))
      arg      
      (if (= k 1)
          (car arg)
          (get-element-2 (cdr arg) (- k 1))
          )
      )
  )
