#lang planet neil/sicp
(define (reverse lists)
  (define (get-sub list)
    (if (pair? list)
        (reverse list)
        list))
  (define (some-fun list current)
    (if (null? list)
        current
        (some-fun  (cdr list)
                   (cons (get-sub (car list)) current))))
  (some-fun  lists '()))

(reverse (list (list 1 2) (list 3 4)))