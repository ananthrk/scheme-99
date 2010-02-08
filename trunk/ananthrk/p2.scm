;find the last-but-one element in the list
(define (last-but-one arg)
    (if (list? arg)
        (if (or (null?  arg) (null? (cdr arg)))
            '()
            (if (null? (cddr arg))
                arg
                (last-but-one (cdr arg))))))