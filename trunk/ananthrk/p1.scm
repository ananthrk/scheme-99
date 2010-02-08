(define last-element
    (lambda (arg)
      (if (null? (cdr arg))
          (car arg)
          (last-element (cdr arg)))))