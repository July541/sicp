(load "42.scm") ; for compose

(define (repeat f times)
    (if (eq? 1 times)
        f
        (repeat (compose f f) (-1+ times))))