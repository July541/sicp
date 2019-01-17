(load "8.scm")

(define (dest x)
    (/ (- (upper-bound x)
          (lower-bound x))
       2.0))