(load "rational.scm")

(define (reduction factor1 factor2)
    (cond ((and (< factor1 0) (< factor2 0))
              (cons (- factor1) (- factor2)))
          ((and (>= factor1 0) (< factor2 0))
              (cons (- factor1) (- factor2)))
          (else (cons factor1 factor2))))

; improved version
(define (make-rat x y)
    (let ((g (gcd x y)))
        (reduction (/ x g) (/ y g))))