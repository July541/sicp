;;; origin version

(define (first-denomination kinds-of-coins)
    (cond ((= kinds-of-coins 1) 1)
          ((= kinds-of-coins 2) 2)
          ((= kinds-of-coins 3) 5)))

(define (cc amount kinds-of-coins)
    (cond ((= amount 0) 1)
          ((or (< amount 0) (= kinds-of-coins 0)) 0)
          (else (+ (cc amount (-1+ kinds-of-coins))
                   (cc (- amount (first-denomination kinds-of-coins))
                        kinds-of-coins)))))

(define (count-change amount)
    (cc amount 3))

;;; update version

(define (first-denomination coin-values)
    (car coin-values))

(define (expect-first-denomination coin-values)
    (cdr coin-values))

(define (no-more? coin-values)
    (null? coin-values))

(define (cc amount coin-values)
    (cond ((= amount 0) 1)
          ((or (< amount 0) (no-more? coin-values)) 0)
          (else (+ (cc amount (expect-first-denomination coin-values))
                   (cc (- amount (first-denomination coin-values))
                       coin-values)))))

(define coin-values (list 1 2 5 8))

(define (count-change amount)
    (cc amount coin-values))