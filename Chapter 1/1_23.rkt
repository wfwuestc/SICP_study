#lang planet neil/sicp
(define (timed-prime-test n k)
  (start-prime-test n k (runtime)))

(define (start-prime-test n k start-time)
  (getss n k)
  (report-prime (- (runtime) start-time)))

(define (report-prime elapsed-time)
  (display " *** ")
  (display elapsed-time)
  (newline))

(define (sforp n k)
  (let ((start (runtime)))
    (getss n k)
    (newline)
    (- (runtime) start)))

(define (small-divisor n)
  (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (next test-divisor)))))

(define (divides? a b)
  (= (remainder b a) 0))

(define (square n)
  (* n n))

(define (prime? n)
  (= n (small-divisor n)))

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
        ((prime? n)
          (display n)
          (newline)
          (getss (newodd n) (- k 1)))
        (else (getss (newodd n) k))))

(sforp 10000000 3)
(sforp 100000000 3)
(sforp 1000000000 3)
(sforp 10000000000 3)




