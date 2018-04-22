; Exercise 1.11.

; Recursion
(define (f n)
    (if (< n 3)
        n
        (+ (f (-1+ n))
           (* 2 (f (- n 2)))
           (* 3 (f (- n 3))))))

; Iteration
(define (iter-f n)
    (if (< n 0)
        n
        (f-iter 2 1 0 n)))

(define (f-iter a b c n)
    (if (= n 0)
        c
        (f-iter (+ a (* 2 b) (* 3 c))
                a
                b
                (-1+ n))))


; fibnoacci
(define (fib n)
    (if (< n 3)
        1
        (+ (fib (-1+ n))
           (fib (- n 2)))))

(define (iter-fib n)
    (iter 1 0 n))

(define (iter a b n)
    (if (= n 0)
        b
        (iter (+ a b) a (-1+ n))))