; 有5角，2角，1角，用1元有多少种换法

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