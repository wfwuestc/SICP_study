#lang planet neil/sicp
(define (cont-frac-iter N D k)
    (define (iter i result)
        (if (= i 0)
            result
            (iter (- i 1)
                  (/ (N i)
                     (+ (D i) result)))))
    (iter (- k 1)
          (/ (N k) (D k))))

(define (tan-cf x k)
  (cont-frac-iter
   (lambda (i)
     (if (= i 1)
         x
        (- (* x x))))
   (lambda (i)
     (- (* i 2) 1))
   k))

(tan-cf 0.8 100)