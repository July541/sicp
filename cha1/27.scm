; Exercise 1.27.

(define (carmichael-check n)
    (carmichael-check-iter 1 n))

(define (carmichael-check-iter a n)
    (cond ((= a n) true)
          ((= (expmod a n n) a) (carmichael-check-iter (1+ a) n))
          (else false)))

(define (expmod base exp m)
    (cond ((= exp 0) 1)
          ((even? exp)
              (remainder (square (expmod base (/ exp 2) m)) m))
          ((odd? exp)
              (remainder (* base (expmod base (-1+ exp) m)) m))))

(define (test-carmichael)
    (display "561: ")
    (display (carmichael-check 561))
    (newline)
    (display "1105: ")
    (display (carmichael-check 1105))
    (newline)
    (display "1729: ")
    (display (carmichael-check 1729))
    (newline)
    (display "2465: ")
    (display (carmichael-check 2465))
    (newline)
    (display "2821: ")
    (display (carmichael-check 2821))
    (newline)
    (display "6601: ")
    (display (carmichael-check 6601))
    (newline))