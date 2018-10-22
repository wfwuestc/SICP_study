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

(define (d-pro i)
  (if (= (remainder (+ i 1) 3) 0)
	 (* (/ (+ i 1) 3) 2)
	 1))
  
(cont-frac-iter (lambda (i) 1.0)
           (lambda (i) 
              (if (= (remainder (+ i 1) 3) 0)
                  (* (/ (+ i 1) 3) 2)
                  1))
            100)