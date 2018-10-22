#lang planet neil/sicp
(define (cont-frac N D k)
    (define (cf i)
        (if (= k i)
            (/ (N k) (D k))
            (/ (N i)
               (+ (D i) (cf (+ i 1))))))
    (cf 1))


(define (cont-frac-iter N D k)
    (define (iter i result)
        (if (= i 0)
            result
            (iter (- i 1)
                  (/ (N i)
                     (+ (D i) result)))))
    (iter (- k 1)
          (/ (N k) (D k))))

(cont-frac (lambda (i) 1.0)
           (lambda (i) 1.0)
           100)

(cont-frac-iter (lambda (i) 1.0)
                (lambda (i) 1.0)
                100)