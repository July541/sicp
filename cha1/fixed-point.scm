(define (fixed-point f first-guess)
    (let ((tolerance 0.00001))
        (define (try guess)
            (let ((next (f guess)))
                (if ((lambda (v1 v2) (< (abs (- v1 v2)) tolerance)) guess next)
                    next
                    (try next))))
    (try first-guess)))
