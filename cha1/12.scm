; Exercise 1.12.

(define (pascal row col)
    (cond ((or (> col row) (= row 0) (= col 0)) 0)
          ((or (= col 1) (= row col)) 1)
          (else (+ (pascal (-1+ row) (-1+ col))
                (pascal (-1+ row) col)))))

; (define (pascal-iter row col)
;     (iter-pascal 1 0 row col))

; (define (iter-pascal a b row col)
;     (cond ((or (> col a b row) (= row 0) (= col 0)) 0)
;           ((or (= col 1) (= row 1) 1) 1)
;           (+ (iter-pascal (-1+ row) col) (iter-pascal (-1+ row) (-1+ col)))
;           ))