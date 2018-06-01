; Return itself of n

(define (identity n)
    (lambda (x)
        (/ (+ (f (- x dx))
              (f x)
              (f (+ x dx)))
        3)))

(define (smooth-ntimes f times)
    ((repeat smooth times) f))