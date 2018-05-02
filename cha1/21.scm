; Exercise 1.21.

(load "prime?.scm")

(define (f)
    (display (smallest-divisor 199))
    (newline)
    (display (smallest-divisor 1999))
    (newline)
    (display (smallest-divisor 19999)))