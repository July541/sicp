; Exercise 1.8.

(define (average x y)
    (/ (+ x y) 2))

(define (improve guess x)
    (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (good-enough? old new)
    (< (abs (- old new)) 0.001))

(define (sqrt3-iter guess x)
    (if (good-enough? guess (improve guess x))
        guess
        (sqrt3-iter (improve guess x) x)))

(define (sqrt3 x)
    (sqrt3-iter 1.0 x))