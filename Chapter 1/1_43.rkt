#lang planet neil/sicp
(define (compose f g)
  (lambda (x)
    (f (g x))))

(define (repeated f n)
  (define (rp i)
    (if (= i n)
        f
        (compose f (rp (+ i 1)))))
  (rp 1))

((repeated (lambda (i) (* i i)) 2) 5)
        