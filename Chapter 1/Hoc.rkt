#lang planet neil/sicp
(define (sum term a next b)
  (if (> a b)
       0
       (+ (term a)
          (sum term (next a) next b))))
      
(define (inc n) (+ n 1))

(define (sum-cubes a b)
  (sum cube a inc b))

(define (cube n)
  (* n n n))

(sum-cubes 1 3)

(define (pi-sum a b)
  (define (pi-term x)
    (/ 1.0 (* x (+ x 2))))
  (define (pi-next x)
    (+ x 4))
  (sum pi-term a pi-next b))

(* 8 (pi-sum 1 1000))