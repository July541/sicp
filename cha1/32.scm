; Exercise 1.32.

(define (accumulate combiner null-value term a next b)
    (if (> a b)
        null-value
        (combiner (term a)
            (accumulate combiner null-value term (next a)
                next b))))

(define (sum term a next b)
    (accumulate + 0 term a next b))

(define (product term a next b)
    (accumulate * 1 term a next b))

(define (factorial n)
    (define (identity a) a)
    (product identity 1 1+ n))

; Iteration accumulate
(define (accumulate-iter combiner null-value term a next b)
    (define (iter a result)
        (if (> a b)
            result
            (iter (next a)
                (combiner result (term a)))))
    (iter a null-value))


(define (product term a next b)
    (accumulate-iter * 1 term a next b))


(define (factorial n)
    (define (identity a) a)
    (product identity 1 1+ n))