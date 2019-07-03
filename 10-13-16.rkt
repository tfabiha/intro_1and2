(define (f x) (cond
                ((< x 0) 1)
                ((= x 0) 0)
                ((< 0 x 5) 5)
                (else 7)))
(f -666)
(f 0)
(f 3.75)
(f 15675)

(define (hun x) (/ (- (modulo x 1000) (modulo x 100)) 100))
(hun 257)
(hun 12)
(hun 512387)