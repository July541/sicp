; Exercise 1.29.

(load "sum.scm")

(define (simpson-rule f a b n)
    (define h
        (/ (- b a) n))
    (define (y k)
        (f (+ a (* k h))))
    (define (yi i)
        (cond ((or (= i 0) (= i n)) (y i))
              ((odd? i) (* 4 (y i)))
              ((even? i) (* 2 (y i)))))
    (* (/ h 3)
       (sum yi (exact->inexact 0) 1+ n)))

; test code
(define (cube x)
    (* x x x))

(define (test-simpson-rule)
    (display (simpson-rule cube 0 1 100))
    (newline)
    (display (simpson-rule cube 0 1 1000)))