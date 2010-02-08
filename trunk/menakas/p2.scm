; Find the last but one element of a list
(define (my-penult lst)
	(if (or (null? lst) (null? (cdr lst)))
		null
		(if (null? (cddr lst))
			(car lst)
			(my-penult (cdr lst))
		)
	)
)
