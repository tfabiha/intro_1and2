(define (diff2 a b) (expt (- a b) 2))

(define (dist x1 y1 x2 y2) (sqrt (+ (diff x2 x1) 
                                    (diff y2 y1))))

(define (getOnesDigit x) (modulo x 10))
(getOnesDigit 2145612)

(define (sqrstff z) (expt 10 (z)))
(define (getNthDigit x y)
        (/ (-(modulo x (expt 10 y))
             (modulo x (sqrstff z)))
                       (sqrstff z)))

(getNthDigit 4522167 6)

(define (getsn x y) (modulo (quotient x (sqrstff (- z 1))) 10))
(getNthDigit 4522167 6)