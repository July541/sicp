; Exercise 1.18.

(load "17.scm")

(define (fast-multi a b)
    (fast-multi-iter a b 0))

(define (fast-multi-iter a b n)
    (cond ((= b 0) n)
          ((even? b) (fast-multi-iter (double a) (halve b) n))
          ((odd? b) (fast-multi-iter a (-1+ b) (+ a n)))))