(define (last-par l)
    (if (null? (cddr l))
        (cdr l)
        (last-par (cdr l))))