;Is list a palindrome
(load "p5.scm")
(define (pal? lst)
  (if (equal? (myrev lst) lst)
      #t
      #f
      )
  )