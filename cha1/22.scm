; Exercise 1.22.

(load "prime?.scm")

(define (runtime)
    (real-time-clock))

(define (timed-prime-test n)
    (newline)
    (display n)
    (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
    (if (prime? n)
        (report-prime (- (runtime) start-time))
        false))

(define (report-prime elapased-time)
    (display " *** ")
    (display elapased-time)
    true)

(define (search-for-primes start times)
    (cond ((= times 0) 0)
          ((timed-prime-test start) (search-for-primes (1+ start) (-1+ times)))
          (else (search-for-primes (1+ start) times))))

(define (three-numbers-larger-than-1000)
    (search-for-primes 1000 3))

(define (three-numbers-larger-than-10000)
    (search-for-primes 10000 3))

(define (three-numbers-larger-than-100000)
    (search-for-primes 100000 3))

(define (three-numbers-larger-than-1000000)
    (search-for-primes 1000000 3))

(define (time-test)
    (three-numbers-larger-than-1000)
    (three-numbers-larger-than-10000)
    (three-numbers-larger-than-100000)
    (three-numbers-larger-than-1000000))