#lang planet neil/sicp
(define (sum n)
  (cond ((< n 3) n)
        (else (+ (sum (- n 1)) (* 2 (sum (- n 2))) (* 3 (sum (- n 3)))))))

(define (ddsum n)
  (cond ((< n 3) n)
        (else (fn n 3 2 1 0))))


(define (fn n k c b a)
  (if (= n k)
      (+ c (* 2 b) (* 3 a))
      (fn n (+ k 1) (+ c (* 2 b) (* 3 a)) c b)))
  