; Exercise 1.16.

(define (expt b n)
    (expt-iter 1 b n))

(define (expt-iter a b n)
    (cond ((= n 0) a)
          ((odd? n) (expt-iter (* a b) b (-1+ n)))
          ((even? n) (expt-iter a (square b) (/ n 2)))))