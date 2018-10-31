#lang planet neil/sicp
(define (last-pair lists)
  (define (iter list last)
    (if (null? list)
        last
        (iter (cdr list) (car list))))
  (iter lists 0))

(last-pair (list 23 72 149 34))
    