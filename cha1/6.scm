; Exercise 1.6.

; sqrt implementation
(define (average x y)
    (/ (+ x y) 2))

(define (improve guess x)
    (average guess (/ x guess)))

(define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.001))

(define (sqrt-iter guess x)
    (if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x) x)))

(define (sqrt x)
    (sqrt-iter 1.0 x))
; end sqrt


; define new if
(define (new-if predicate then-clause else-clause)
    (cond (predicate then-clause)
          (else else-clause)))

; redefine sqrt-iter by new-if
(define (sqrt-iter guess x)
    (new-if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x) x)))

; (sqrt 9) => Aborting!: maximum recursion depth exceeded
; for (if <predicate> <consequent> <alternative>)
; if #t, <consequent> will be processed
; else, <alternative> will be processed
;
; for new-if, <then-clause> and <else-clause> will be processed
; no matter #t or #f
; it causes stack overflow