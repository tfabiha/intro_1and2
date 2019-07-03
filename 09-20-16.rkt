(define (f x) (* 2 x))
(f 2)

(define (hly crp) (+ 20 crp))
(hly 5)

(define (h x) (+ 1 (* 8 x)))
(h 5)
(h 6)
(h (+ 7 3)) 

(define (h x y) (+ x (* y 2)))
(h 2 5)

(define (j t v) (+ (* 2 v) t))
(j 5 3)
(j 3 5)

(define (inc x) (+ x 1))