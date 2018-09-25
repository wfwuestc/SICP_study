#lang planet neil/sicp

(define (average x y)
  (/ (+ x y) 2))

(define (square x)
  (* x x))

(define (abs x)
  (if (< x 0)
      (- x)
      x))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? guess x)
  (< (/ (abs (- (square guess) x)) x) 0.01))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 0.000142)


