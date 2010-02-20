; Create a random permutation of a list
;
(define (rnd-perm lst)
	(randaux lst (length lst) '())
)

(define (randaux lst num res)
     
                 (if (zero? num )
                	res
                        (if (null? lst)
                            res
		      ((lambda (n) (randaux (removeat lst (+ n 1)) (- num 1) (append res (list (list-ref lst n)))))  (random (length lst)) )
                      )
                )
	
)
 
; Remove the nth element

(define (removeat lst num)
	(cond 
		((null? lst) '())
		((> num (length lst)) lst)
		((= num 1) (cdr lst))
  (else (append (list (car lst)) (removeat (cdr lst) (- num 1))))      
  )
)


