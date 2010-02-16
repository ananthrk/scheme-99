; Rotate a list n places to the left.

(define (rotate lst num)
	(cond 
		((null? lst) '())
		((zero? num) lst)
		((< num 0) ((lambda (l) (append (car l) (cadr l))) (reverse (split lst (getnum (length lst) num)))))
        ((> num 0) ((lambda (l) (append (car l) (cadr l))) (reverse (split lst (getnum (length lst) num)))))
                                     
                (else lst)
         )
  
)

; reduces any num to less that length of list.
(define (getnum len num)
  (if (< (abs num) len)
      (if (< num 0)
          (+ len num)
          num
         )
	(if (< num 0)
		(getnum len (+ len num))
		(getnum len (-  num len))
	)
   )
)
; Split a list at the nth element

(define (split lst num)
  (splitaux lst num (cons '() '(()))
  )
)

(define (splitaux lst num res)
  (cond
        ((null? lst) res)
        ((zero? num) (cons (car res) (cons lst '())))
        (else
         (splitaux (cdr lst) (- num 1) (cons (append (car res) (list (car lst))) (cdr res)))
         )
   )
)
