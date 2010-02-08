;find the kth element in the list
(define (get-element arg k) 
    (if (and (list? arg) (> k 0) (<= k (length arg)))
        (list-ref arg (- k 1))))
