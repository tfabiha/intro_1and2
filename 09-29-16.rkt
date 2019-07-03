#|
(define (mysqrt x) (sqrt (abs x)))
(mysqrt -1)
(mysqrt -55)
(mysqrt 5)
|#
(define (fact x) (if (< x 1) 1 (* (fact (- x 1)) x)))
(fact 10)
(fact 1000)


(define (nd n) (if (< n 10) 1 (+ 1 (nd (quotient n 10)))))
(nd 5)
(nd 22)
(nd 30)
(nd 120)
(nd (fact 1000))
