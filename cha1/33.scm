; Exercise 1.33.

(load "prime?.scm")
(load "identity.scm")
(load "gcd.scm")

(define (filter item predicate)
    (predicate item))

(define (filtered-accumulate combiner null-value
    term a next b predicate)
    (define (filtered? n)
        (if (predicate n)
            (term n)
            null-value))
    (if (> a b)
        null-value
        (combiner (filtered? a)
            (filtered-accumulate combiner null-value
                term (next a) next b predicate))))

; a. the sum of the squares of the prime numbers
;   in the interval a to b
(define (sum-of-squares-of-prime a b)
    (filtered-accumulate + 0 square a 1+ b prime?))

; b. the product of all the positive integers less than n
;   that are relatively prime to n
(define (product-of-relatively-prime n)
    (define (relative? i)
        (= (gcd i n) 1))
    (filtered-accumulate * 1 identity 1 1+ n relative?))