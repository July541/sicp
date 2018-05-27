(define (average a b)
    (/ (+ a b) 2))

(define (search f neg-point pos-point)
    (let ((midpoint (average neg-point pos-point)))
        (if ((lambda (x y) (< (abs (- x y)) 0.0000001)) neg-point pos-point) ; close-enough?
            midpoint
            (let ((test-value (f midpoint)))
                (cond ((positive? test-value)
                        (search f neg-point midpoint))
                      ((negative? test-value)
                        (search f midpoint pos-point))
                        (else midpoint))))))

(define (half-interval-method f a b)
    (let ((a-value (f a))
          (b-value (f b)))
          (cond ((and (negative? a-value) (positive? b-value))
                    (search f a b))
                ((and (negative? b-value) (positive? a-value))
                    (search f b a))
                (else
                    (error "Values are not of opposite sign" a b)))))