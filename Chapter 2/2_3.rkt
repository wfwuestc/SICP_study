#lang planet neil/sicp

(define (make-segment start end)
  (cons start end))
(define (start-segment x)
  (car x))
(define (end-segment x)
  (cdr x))
(define (make-point x y)
  (cons x y))
(define (x-point point)
  (car point))
(define (y-point point)
  (cdr point))

(define (perimeter r)
  (let ((length (length-of-rectangle r))
        (width (width-of-rectangle r)))
    (* (+ length width)
       2)))

(define (area r)
  (let ((length (length-of-rectangle r))
        (width (width-of-rectangle r)))
    (* length width)))

;使用四条线段表示
(define (make-rectangle length-1 length-2 width-1 width-2)
  (cons (cons length-1 length-2)
        (cons width-1 width-2)))

(define (length-1-rectangle r)
    (car (car r)))

(define (length-2-rectangle r)
    (cdr (car r)))

(define (width-1-rectangle r)
    (car (cdr r)))

(define (width-2-rectangle r)
    (cdr (cdr r)))

(define width-2 (make-segment (make-point 4 2)
                                    (make-point 4 4)))

(define width-1 (make-segment (make-point 1 2)
                                    (make-point 1 4)))

(define length-2 (make-segment (make-point 1 2)
                                     (make-point 4 2)))

(define length-1 (make-segment (make-point 1 4)
                                     (make-point 4 4)))

(define rectangle (make-rectangle length-1 length-2 width-1 width-2))

(define (length-of-rectangle r)
  (let ((length (length-1-rectangle r)))
    (let ((start (start-segment length))
          (end (end-segment length)))
      (- (x-point end)
         (x-point start)))))

(define (width-of-rectangle r)
    (let ((width (width-1-rectangle r)))
        (let ((start (start-segment width))
              (end (end-segment width)))
            (- (y-point end)
               (y-point start)))))
(perimeter rectangle)
(area rectangle)

; 第二种方法实现 长和宽
(define (create-rectangle width height)
  (cons width height))
(define (rect-width r)
  (car r))
(define (rect-length r)
  (cdr r))

(define (length-of-rect r)
  (let ((length (rect-length r)))
    (let ((start (start-segment length))
          (end (end-segment length)))
      (- (x-point end)
         (x-point start)))))

(define (width-of-rect r)
    (let ((width (rect-width r)))
        (let ((start (start-segment width))
              (end (end-segment width)))
            (- (y-point end)
               (y-point start)))))

(define l (make-segment (make-point 1 2)
                              (make-point 4 2)))

(define w (make-segment (make-point 1 2)
                              (make-point 1 4)))

(define r (create-rectangle w l))

(define (perimeter-1 r)
  (let ((length (length-of-rect r))
        (width (width-of-rect r)))
    (* (+ length width)
       2)))

(define (area-1 r)
  (let ((length (length-of-rect r))
        (width (width-of-rect r)))
    (* length width)))

(perimeter-1 r)
(area-1 r)
;(define (make-point x y)
;  (cons x y))
;(define (x-point point)
;  (car point))
;(define (y-point point)
;  (cdr point))
;
;(define (rectangle fs tf)
;  (cons fs tf))
;
;(define (fs rectangle)
;  (car rectangle))
;
;(define (tf rectangle)
;  (cdr rectangle))
;
;(define (a-point fs)
;  (car fs))
;
;(define (c-point tf)
;  (car tf))
;
;(define (b-point fs)
;  (cdr fs))
;
;(define (d-point tf)
;  (cdr tf))

;(define (circumference rectangle)
;  (let ((a (a-point (fs rectangle)))
;        (b (b-point (fs rectangle)))
;        (c (c-point (tf rectangle))))
;    (+ (* (sqrt (+ (square (- (x-point b) (x-point a)))
;                   (square (- (y-point b) (y-point a)))))
;          2)
;       (* (sqrt (+ (square (- (x-point c) (x-point a)))
;                   (square (- (y-point c) (y-point a)))))
;          2))))
        
                
        