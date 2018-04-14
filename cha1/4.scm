; Exercise 1.4. Describe the behavior of the following procedure

(define (a-plus-abs-b a b)
    ((if (> b 0) + -) a b))
; equivalent to a + |b|