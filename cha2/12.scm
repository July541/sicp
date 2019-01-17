(load "10.scm")

(define (percent x)
    (/ x 100.0))

(define (make-center-width c w)
    (make-interval (- c w) (+ c w)))

(define (center i)
    (/ (+ (lower-bound i) (upper-bound i)) 2))

(define (width i)
    (/ (- (lower-bound i) (upper-bound i)) 2))

(define (make-center-percent c p)
    (let ((per (percent p)))
        (make-interval (- c per) (+ c per))))