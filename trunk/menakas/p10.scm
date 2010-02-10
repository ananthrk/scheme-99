;Run length encoding
;

(define (encode lst)
	(if (null? lst) 
		'()
		(if (null? (cdr lst))
			(list (list '1 (car lst)))
			(append (list (packaux lst 0)) (getnext lst))
		)
	)
)

; forms the next sub list
(define (packaux lst1 num)
	(if (null? lst1)
		'()
		(if (null? (cdr lst1))
			(list  (+ num 1) (car lst1))
			(if (eqv? (car lst1) (cadr lst1))
				(packaux (cdr lst1) (+ num 1))
				(list  (+ num 1) (car lst1))
			)
		)
	)
)

; moves to the beginning of next sub list and calls encode again
(define (getnext lst2)
	(if (or (null? lst2) (null? (cdr lst2)))
		'()
		(if (eqv? (car lst2) (cadr lst2))
			(getnext (cdr lst2))
			(encode (cdr lst2))
		)
	)
)


