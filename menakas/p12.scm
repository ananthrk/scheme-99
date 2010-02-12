; Decode Run length encoding 
(define (decode lst) 
	(if (null? lst)
		'()
		(if (list? (car lst))
			(append (decodeaux (list (cadar lst)) (caar lst)) (decode (cdr lst)))
			(append (list (car lst)) (decode (cdr lst)))
	
		)
	)
)


(define (decodeaux lst1 n) 
	(if (<= n 0)
		'()
		(if (= n 1)
			lst1
			(append (cons (car lst1) (decodeaux lst1 (- n 1))))
		)
	)
)
