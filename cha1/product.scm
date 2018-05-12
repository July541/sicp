; Return the product of the values of a function at points
;     over a given range.

(define (product term a next b)
    (if (> a b)
        1
        (* (term a)
           (product term (next a) next b))))

; Iteration product
(define (product term a next b)
    (define (iter a result)
        (if (> a b)
            result
            (iter (next a) (* result (term a)))))
    (iter a 1))