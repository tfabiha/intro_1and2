(define (getNthDigit x y) (/ (- (modulo x (expt 10 y)) 
                                (modulo x (expt 10 (- y 1)))) 
                             (expt 10 (- y 1))))

(getNthDigit 455231 2)