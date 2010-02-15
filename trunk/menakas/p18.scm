; Extract a slice from a list

(define (slice lst start end)
	(cond 
          
		((null? lst) '())
                ((< end start) '())
           	((= end 1) (list (car lst)))
		((<= start 1) (append (list (car lst)) (slice (cdr lst) (- start 1) (- end 1))))

		(else (slice (cdr lst) (- start 1) (- end 1)))
  )
)

