#lang planet neil/sicp
(define (square x) (* x x))


(define (square-list items)
  (if (null? items)
      nil
      (cons (square (car items))
            (square-list items))))

(define (square-list-map items)
  (map square items))