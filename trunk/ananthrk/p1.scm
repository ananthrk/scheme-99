;find the last element in the list
(define (last-element arg)
    (if (list? arg)
        (if (null?  arg)
            '()
            (if (null? (cdr arg))
                (car arg)
                (last-element (cdr arg))))))