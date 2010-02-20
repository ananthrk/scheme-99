; Insert element at n

(define (insertat elem lst n)
	(cond 
		((= n 1) (cons elem lst))
		((null? lst) '())
		(else (append (list (car lst)) (insertat elem (cdr lst) (- n 1))))
	)
)
