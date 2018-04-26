; Exercise 1.17.

(define (double a)
    (+ a a))

(define (halve a)
    (/ a 2))

(define (fast-multi a b)
    (cond ((= b 0) 0)
          ((even? b) (double (fast-multi a (halve b))))
          ((odd? b) (+ a (fast-multi a (-1+ b))))))