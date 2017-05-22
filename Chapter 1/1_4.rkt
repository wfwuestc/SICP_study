;这个是求a加上b的绝对值
#lang planet neil/sicp
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))