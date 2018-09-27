#lang planet neil/sicp
(define (product f a b)
  (mult f a inc b))

(define (mult term a next b)
  (if (> a b)
      1
      (* (term a)
         (mult term (next a) next b))))

(define (mult-iter term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (* (term a) result))))
  (iter a 1))

(define (inc n)
  (+ n 1))

(define (factorial n)
  (define (nochange k) k)
  (product nochange 1 n))

(define (pie-item k)
  (if (even? k)
      (/ (+ k 2) (+ k 1))
      (/ (+ k 1) (+ k 2))))

(define (pie n)
  (* (product pie-item 1 n) 4.0))

(pie 5000)
