#lang planet neil/sicp
(define (compose f g)
  (lambda (x)
    (f (g x))))
((compose (lambda (i) (* i i)) (lambda (i) (+ i 1))) 6)  