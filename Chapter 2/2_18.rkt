#lang planet neil/sicp
(define (reverse lists)
  (define (some-fun list current)
    (if (null? list)
        current
        (some-fun (cdr list) (cons (car list) current))))
  (some-fun  lists '()))

(reverse (list 1 4 9 16 25))