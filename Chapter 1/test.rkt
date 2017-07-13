#lang planet neil/sicp
(define (pascal x y)
  (cond ((= x 1) 1)
        ((> x y) 0)
        (else (+ (pascal (- x 1) (- y 1)) (pascal x (- y 1))))))

(define (colmun n m)
  (format #t " ~S "  (pascal n m))   
   (if (< n m) (colmun (+ n 1) m)))