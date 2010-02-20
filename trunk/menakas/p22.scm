; Create list with all integers in given range
;
(define (range start end)
	(if (< end start)
		'()
		(cons  start (range (+ start 1) end))
	)
)
