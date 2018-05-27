(load "37.scm")

(define (n i)
    1.0)

(define (d i)
    (if (eq? 0 (remainder (- i 2) 3))
        (* 2 (+ 1 (/ (- i 2) 3)))
        1))

(define euler-e (+ 2 (cont-frac n d 100)))