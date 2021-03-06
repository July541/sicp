(load "43.scm")

(define dx 0.001)

(define (smooth f)
    (lambda (x)
        (/ (+ (f (- x dx))
              (f x)
              (f (+ x dx)))
        3)))

(define (smooth-ntimes f times)
((repeat smooth times) f))