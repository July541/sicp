; Exercise 1.3. Define a procedure that takes three numbers as arguments
; and return the sum of the squares of the two large numbers

(define (sum-of-squares-of-two-large-numbers a b c)
    (if (> a b)
        (if (> b c) (+ (* a a) (* b b)) (+ (* a a) (* c c)))
        (if (> a c) (+ (* a a) (* b b)) (+ (* b b) (* c c)))))