(define (same-parity lst)
    (same-parity-helper (list (car lst)) (cdr lst)))

(define (same-parity-helper target lst)
    (if (null? lst)
        target
        ((if (same-type? (car target) (car lst))
            (append target (car lst)))
        (same-parity-helper target (cdr lst)))))

(define (same-type? a b)
    (or (and (odd? a) (odd? b))
        (and (even? a) (even? b))))