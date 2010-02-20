; Lotto
;
(define (lotto-select num max)
	(rnd-select (range '1 max) num)
)
 
; Extract randomly selected items from a list
;
(define (rnd-select lst num)
	(randaux lst num '())
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
; Create list with all integers in given range
;
(define (range start end)
	(if (< end start)
		'()
		(cons  start (range (+ start 1) end))
	)
)





