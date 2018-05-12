; Exercise 1.31.

(load "product.scm")

(define (factorial n)
    (define (identity n) n)
    (product identity 1 1+ n))

(define (numerator n)
    (if (odd? n)
        (1+ n)
        (+ n 2)))

(define (denominator n)
    (if (odd? n)
        (+ n 2)
        (1+ n)))

(define pi
    (exact->inexact (* 4
       (/ (product numerator 1 1+ 10000)
          (product denominator 1 1+ 10000)))))