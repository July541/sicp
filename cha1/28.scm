; Exercise 1.28.

(define (expmod base exp m)
    (cond ((= exp 0) 1)
          ((nontrivial-square-root? base m) 0)
          ((even? exp)
              (remainder (square (expmod base (/ exp 2) m)) m))
          ((odd? exp)
              (remainder (* base (expmod base (-1+ exp) m)) m))))

(define (nontrivial-square-root? a n)
    (and (not (= a 1))
         (not (= a (-1+ n)))
         (= 1 (remainder (square a) n))))

(define (miller-rabin-test n)
    (define (try-it a)
        (= (expmod a (-1+ n) n) 1))
    (try-it (+ 1 (random (- n 1)))))

(define (fast-prime? n times)
    (cond ((= times 0) true)
          ((miller-rabin-test n) (fast-prime? n (-1+ times)))
          (else false)))