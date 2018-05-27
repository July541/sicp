(load "37.scm")

(define (tan-cf x k)
    (exact->inexact (cont-frac (lambda (i) (if (eq? i 1)
                                x
                                (- (* x x))))
               (lambda (i) (- (* 2 i) 1))
               k)))