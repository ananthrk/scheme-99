; Run length encoding  - direct
(define (encode-dir lst) 
	(encodeaux lst 1)
)

(define (encodeaux  lst1 ctr)
	(if (null? lst1)
		'()
         (if (null? (cdr lst1))
             (list (car lst1))
             (if (eqv? (car lst1) (cadr lst1))
		   	(encodeaux (cdr lst1) (+ ctr 1))
		   	(if (= ctr 1)
		   		(cons (car lst1) (encodeaux (cdr lst1) 1))
		   		(cons (cons ctr (list (car lst1))) (encodeaux (cdr lst1) 1))
		   	)
             )
		)
	)
)
