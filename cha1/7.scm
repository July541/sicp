; Exercise 1.7.

(define (average x y)
    (/ (+ x y) 2))

(define (improve guess x)
    (average guess (/ x guess)))

(define (good-enough? old new)
    (< (abs (- old new)) 0.001)) ; edited

(define (sqrt-iter guess x)
    (if (good-enough? guess (improve guess x)) ; edited
        guess
        (sqrt-iter (improve guess x) x)))

(define (sqrt x)
    (sqrt-iter 1.0 x))