(define (f x y) 
  (if (and (or (< x 0) (> x 10)) (= y 4)) 12 4))

(f -99 6)
(f 4 4)
(f 56 425)
(f -4 4)

(define (g x) (if (= x 1) 10 (if (= x 4) 12 14)))

(g 1)
(g 4)
(g 755)

#| 
"cond" 
(cond
   (test result)
   (test result)
   (else result)
*"else" optional*)
|#

(define (w x) (cond
                ((= x 1) 10)
                ((< x 4) 12)))
(+ (w 1) 4)

