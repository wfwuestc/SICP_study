#lang planet neil/sicp
(define (double f)
  (lambda (x)
    (f (f x))))
(define (inc i)
 (+ 1 i))
(((double (double double)) inc) 5)