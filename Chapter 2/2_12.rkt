#lang planet neil/sicp
(define (make-center-percent center percent)
  (let ((deviation (* center (/ percent 100))))
    (cons (- center deviation) (+ center deviation))))
(define (center interval)
  (/ (+ (car interval) (cdr interval)) 2))

(define (percent interval)
  (let ((middle (center interval)))
    (* (/ (- (cdr interval) middle) middle) 100)))