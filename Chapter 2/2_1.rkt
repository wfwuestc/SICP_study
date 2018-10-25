#lang planet neil/sicp
;(define (make-rat a b)
;  (cond ((and (< a 0) (> b 0)) (cons (- a) b))
;        ((and (> a 0) (< b 0)) (cons a (- b)))
;        ((and (< a 0) (< b 0)) (cons (- a) (- b)))
;        (else (cons a b))))


(define (make-rat a b)
  (if (< b 0)
      (cons (- a) (- b))
      (cons a b)))