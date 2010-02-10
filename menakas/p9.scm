;Pack consecutive duplicates of list elements into sublists
;
;Used double recursion.
;
;First recursive fn packaux packs the first sublist
;
;getnext moves to the beginning of next sublist and calls the main
;function pack recrsively.
;
;Can this be simplified further? 
;
;Certainly in the crude way I have constructed the lists.
;Need to really understand the difference between 
;list append & cons
;
;
(define (pack lst)
	(if (null? lst) 
		'()
		(if (null? (cdr lst))
			(list (list (car lst)))
			(append (list (packaux lst)) (getnext lst))
		)
	)
)

; forms the next sub list
(define (packaux lst1)
	(if (null? lst1)
		'()
		(if (null? (cdr lst1))
			(list (car lst1))
			(if (eqv? (car lst1) (cadr lst1))
				(cons (car lst1) (packaux (cdr lst1)))
				(list (car lst1))
			)
		)
	)
)

; moves to the beginning of next sub list and calls pack again
(define (getnext lst2)
	(if (or (null? lst2) (null? (cdr lst2)))
		'()
		(if (eqv? (car lst2) (cadr lst2))
			(getnext (cdr lst2))
			(pack (cdr lst2))
		)
	)
)


