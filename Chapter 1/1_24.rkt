#lang planet neil/sicp

(define (sforp n k)
  (let ((start (runtime)))
    (getss n k)
    (newline)
    (- (runtime) start)))

(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder (square (expmod base (/ exp 2) m))
                    m))
        (else
         (remainder (* base (expmod base (- exp 1) m))
                   m))))

(define (square n)
  (* n n))

(define (fermat-test n)
  (define (try-it a)
    (= (expmod a n n) a))
  (try-it (+ 1 (random (- n 1)))))

(define (fast-prime? n times)
  (cond ((= times 0) true)
        ((fermat-test n) (fast-prime? n (- times 1)))
        (else false)))

(define (newodd n)
  (if (odd? n)
      (+ 2 n)
      (+ 1 n)))

(define (next n)
  (if (= n 2)
      3
      (+ n 2)))


(define (getss n k)
  (cond ((= k 0)
          (display "done"))
        ((fast-prime? n 3)
          (display n)
          (newline)
          (getss (newodd n) (- k 1)))
        (else (getss (newodd n) k))))

(sforp 1000000 3)
(sforp 10000000 3)
(sforp 100000000 3)
(sforp 1000000000 3)




