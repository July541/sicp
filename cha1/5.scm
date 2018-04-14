; Exercise 1.5. 

(define (p) (p))

(define (test x y)
    (if (= x 0)
        0
        y))

; for (test 0 (p))
; if applicative-order evalution -> endless loop (一直对p求值，死循环)
; if normal-order evalution -> 0 (x为0，直接返回结果，不对p运算)