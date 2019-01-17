(load "8.scm")

(define (div-interval x y)
    (if (and (< (lower-bound y) 0)
             (> (upper-bound y) 0))
        (error "division cross zero is invalid")
        (mul-interval x
                  (make-interval (/ 1.0 (upper-bound y))
                                 (/ 1.0 (lower-bound y))))))