; Generate all combinations of a list
;
(define (combination n lst)
    (if (or (null? lst) (zero? n))
        '()
        (if (= n 1)
            lst
            (append (product1 (car lst) (combination (- n 1) (cdr lst))) (combination n (cdr lst)))
        )
    )
)

;add an element in front of each sublist of a list
(define (product1 elem lst)
    (if (null? lst)
        '()
        (if (list? (car lst))
            (cons (append (list elem) (car lst)) (product1 elem (cdr lst)))
            (cons (list elem (car lst)) (product1 elem (cdr lst)))
        )
    )
)

