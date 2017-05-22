#lang planet neil/sicp
(define (good guess x)
  (< (abs (- (cube guess) x)) 0.01))

(define (cube x)
  (* x x x))

(define (abs a)
  (cond ((>= a 0) a)
        ((< a 0) (- 0 a))))

(define (improve guess x)
  (/ (+ (/ x (* guess guess))
        (* 2 guess))
     3))

(define (cube_root guess x)
  (if (good guess x)
      guess
      (cube_root (improve guess x) x)))