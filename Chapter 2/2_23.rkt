#lang planet neil/sicp
(define (for-each procedure list)
  (if (not (null? list))
      (begin
        (procedure (car list))
        (for-each procedure (cdr list)))))