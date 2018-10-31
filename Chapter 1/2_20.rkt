#lang planet neil/sicp
(define (same-parity x . y)
  (define (some-fun fun list)
    (if (null? list)
        '()
        (if (fun (car list))
            (cons (car list) (some-fun fun (cdr list)))
            (some-fun fun (cdr list)))))
  (if (even? x)
      (cons x (some-fun even? y))
      (cons x (some-fun odd? y))))

(same-parity 1 3 4 5 6 7)

      
  