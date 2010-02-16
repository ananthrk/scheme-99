; Remove the nth element

(define (removeat lst num)
	(cond 
		((null? lst) '())
		((> num (length lst)) lst)
		((= num 1) (cdr lst))
  (else (append (list (car lst)) (removeat (cdr lst) (- num 1))))      
  )
)

