;Drop evey nth element
;
(define (dropn lst num)
  (if (null? lst)
      '()
       (dropaux lst num num)
  )
)
(define (dropaux lst num count)
  (if (null? lst)
      '()
      (if (= count 1)
          (dropaux (cdr lst) num num)
          (append (list (car lst)) (dropaux (cdr lst) num (- count 1)))
       )
  )
)
