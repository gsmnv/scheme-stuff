(define (fahrenheit x) (* (/ 5 9) (- x 32)))

(define (crisp x) (- (* 7 x) 30))

(write (crisp 27))
(newline)
(write (crisp (fahrenheit 174.6)))
