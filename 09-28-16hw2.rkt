; Problem 1
(define (f x) (cond
                ((<= x 3) 2)
                ((> x 3) (+ (- (expt x 2) (* 3 x)) 8))))
(f 5)
(f 1)
; (f 5) = 18 (f 2) = 1

; Problem 2
(define (Div23 x) (or (= (modulo x 2) 0) (= (modulo x 3) 0))) 
(Div23 5)
(Div23 6)

; Problem 6
(define (SmallestDivisor x))

