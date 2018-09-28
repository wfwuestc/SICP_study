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

(define (newton f guess)
  (define df (deriv f))
  (fixed-point
   (lambda (x) (- x (/ (f x) (df x))))
   guess))

(define deriv
  (lambda (f) (lambda (x)
                (/ (- (f (+ x dx))
                      (f x))
                   dx))))

(define dx .000001)

(define fx
  (lambda (x) (- (* x x) 9)))

(newton fx 1)
                