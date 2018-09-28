#lang planet neil/sicp
(define (fixed-point f start)
  (define tolerance 0.00001)
  (define (abs n)
    (if (< n 0)
        (- 0 n)
        n))
  (define (close-enuf? u v)
    (< (abs (- u v)) tolerance))
  (define (iter old new)
    (if (close-enuf? old new)
        new
        (iter new (f new))))
  (iter start (f start)))

(define (sqrt x)
  (fixed-point
    (average-damp (lambda (y) (/ x y)))
    1))

(define average-damp
  (lambda (f) (lambda (x)(average (f x) x))))

(define (average x y) (/ (+ x y) 2))

(sqrt 4)