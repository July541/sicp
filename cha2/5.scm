(define (pow a b)
    (if (= b 0)
        1
        (* a (pow a (-1+ b)))))

(define (cons x y)
    (lambda (m) (m (pow 2 x) (pow 3 y))))

(define (car z)
    (z (lambda (p q) p)))

(define (cdr z)
    (z (lambda (p q) q)))