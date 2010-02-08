(define (my-last lst)
	(if (null? lst)
		null
		(if (null? (cdr lst))
			(car lst)
			(my-last (cdr lst))
		)
	)
)
