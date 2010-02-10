  ; Eliminate consecutive duplicates of list elements.
(define (compress lst) 
	(if(null? lst)
		'()
         (if (null? (cdr lst))
         	lst
            (if (eqv? (car lst) (cadr lst))
				(compress(append (cons (car lst) '()) (cddr lst)))
				(append (cons (car lst) '()) (compress(cdr lst)))
            )
		)	
	)
)
