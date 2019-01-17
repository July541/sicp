(load "1.scm") ; load rational number

(define (make-point a b)
    (cons a b))

(define (x-point point)
    (car point))

(define (y-point point)
    (cdr point))

(define (equal-point? p1 p2)
    (and (equal-rat? (x-point p1) (x-point p2))
         (equal-rat? (y-point p1) (y-point p2))))

(define (print-point p)
    (newline)
    (display "(")
    (display (x-point p))
    (display ",")
    (display (y-point p))
    (display ")"))

(define (make-segment start end)
    (cons start end))

(define (start-segment seg)
    (car seg))

(define (end-segment seg)
    (cdr seg))

(define (mid-val x y)
    (div-rat (add-rat x y) (make-rat 2 1)))

(define (midpoint-segment seg)
    (cons (mid-val (x-point (start-segment seg)) (x-point (end-segment seg)))
          (mid-val (y-point (start-segment seg)) (y-point (end-segment seg)))))