#lang scheme

(define (reverse-list arg)
  (if (or (null? arg) (not (list? arg)))
      arg
      (append (reverse-list (cdr arg)) (list (car arg)))
      )
  )

(define (is-palindrome arg)
  (if (list? arg)
      (equal? arg (reverse-list arg))
      #f
      )
  )