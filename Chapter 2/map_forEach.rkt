#lang planet neil/sicp
(define (map procedure list)
  (if (null? list)
      '()
      (cons (procedure (car list))
            (map procedure (cdr list)))))

(define (for-each proc list)
  (cond ((null? list) "done")
        (else (proc (car list))
              (for-each proc
                        (cdr list)))))