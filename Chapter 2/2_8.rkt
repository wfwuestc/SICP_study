#lang planet neil/sicp
(define (sub-interval x y)
  (let ((min-value (- (lower-bound x) (upper-bound y)))
        (max-value (- (upper-bound x) (lower-bound y))))
    (make-interval min-value max-value)))
        