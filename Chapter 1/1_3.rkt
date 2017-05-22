;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 1_3) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (large a b c)
  (cond ((and (>= a b) (>= a c)) a)
        ((and (>= b a) (>= b c)) b)
        (else c)))

(define (mid a b c)
  (cond ((or (and (>= a b) (<= a c)) (and (>= b a) (<= c a))) a)
        ((or (and (>= b a) (<= b c)) (and (>= a b) (<= c b))) b)
        ((or (and (>= c b) (<= c a)) (and (>= b c) (<= a c))) c)))

(define (sum a b c)
  (+ (large a b c) (mid a b c)))