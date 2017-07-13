#lang planet neil/sicp
(define (mul a b)
  (cond ((= b 0) 0)
        ((even? b) (mul (double a) (halve b)))
        (else (+ a (mul a (- b 1))))))

(define (double a)
  (+ a a))
(define (halve b)
  (/ b 2))