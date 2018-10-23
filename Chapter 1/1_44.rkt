#lang planet neil/sicp
(define (smooth f)
  (lambda (x)
    (/ (+ (f (- x dx)) (f x) (f (+ x dx))) 3)))
(define dx 0.00001)
(define (compose f g)
  (lambda (x)
    (f (g x))))

(define (repeated f n)
  (define (rp i)
    (if (= i n)
        f
        (compose f (rp (+ i 1)))))
  (rp 1))

(define (smooth-n-times f n)
  ((repeated smooth n) f))

((smooth-n-times (lambda (i) (* i i)) 10) 5)
