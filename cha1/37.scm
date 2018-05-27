; Recrusive version
(define (cont-frac n d k)
    (define (cont-frac-recr i)
        (if (> i k)
            0
            (/ (n i) (+ (d i) (cont-frac-iter (1+ i))))))
    (cont-frac-recr 1))

; Iteration version
(define (cont-frac n d k)
    (define (cont-frac-iter i res)
        (if (= i 0)
            res
            (cont-frac-iter (-1+ i) (/ (n i) (+ (d i) res)))))
    (cont-frac-iter k 0))