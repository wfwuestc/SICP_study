#lang planet neil/sicp
(define (miter a b c)
  (cond ((= b 0) c)
        ((even? b) (miter (double a) (halve b) c))
        (else (miter a (- b 1) (+ a c)))))
(define (double a)
  (+ a a))
(define (halve b)
  (/ b 2))