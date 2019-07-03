#|This is for commenting. 
You can write multiple lines.|#

;(if "test" "true-part" "f-part")
(if (> 5 4) 12 (+ 1 5))
(if (< 5 4) 12 (+ 1 5))

;Absolute Value
(define (myabsrcool x) (if (> x 0) x (- x)))
(myabsrcool -5)

(define (f x) (if (>= x 10) 4 12))
(f 5)
(f 555)

(define (lifeidk x) (if (<= x -10) 4 (if (>= x 10) 4 12)))
(lifeidk 5)
(lifeidk -15)
(lifeidk 1477)

(define (d fine) (if (or (< fine 10) (> fine -10)) 12 4))
(lifeidk 5)
(lifeidk -15)
(lifeidk 1477)
;There is also one using "and" instead of "or".

(define (douche bag) (if (< -10 fine 10) 12 4))

(define (life death) (if (>= (abs death) 10) 4 12) )


