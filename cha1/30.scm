; Exercise 1.30.

(load "29.scm")

(define (sum term a next b)
    (define (iter a result)
        (if (> a b)
            result
            (iter (next a)
                  (+ result (term a)))))
    (iter a 0))
