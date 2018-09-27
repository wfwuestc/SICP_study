#lang planet neil/sicp
(define (core f a b n h k)
  (if (= k n)
      (f (+ a (* k h)))
      (if (even? k)
          (+ (* 2 (f (+ a (* k h)))) (core f a b n h (+ k 1)))
          (+ (* 4 (f (+ a (* k h)))) (core f a b n h (+ k 1))))))

(define (sum f a b n h)
  (+ (f a) (core f a b n h 1)))

(define (simpson f a b n)
  (if (not (even? n))
      "error: n should be even"
      (* (/ (/ (- b a) n) 3) (sum f a b n (/ (- b a) n)))))
(define (cube n)
  (* n n n))

(simpson cube 0 1 100)
(simpson cube 0 1 1000)