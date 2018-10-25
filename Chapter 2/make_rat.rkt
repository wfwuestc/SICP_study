#lang planet neil/sicp
  
(define (make-rat x y)
  (let ((g (gcd x y)))
    (cons (/ x g)
          (/ y g))))

(define (numer x) (car x))

(define (denom x) (cdr x))

(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))))

(define (+rat a b)
  (make-rat (+ (* (numer a) (denom b)) (* (numer b) (denom a)))
            (* (denom b) (denom a))))

(define a (make-rat 1 2))

(define b (make-rat 1 4))

(define ans (+rat a b))

(numer ans)
(denom ans)