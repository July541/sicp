; The greatest common divisors of a and b
(define (gcd a b)
    (if (= b 0)
        a
        (gcd b (remainder a b))))