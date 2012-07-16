(define (sum term a next b)
           (if (> a b)
               0
               (+ (term a)
                  (sum term (next a) next b))))

(write 
 (sum (lambda (x) (* x x))
      1
      (lambda (x) (+ x 1))
      3))
(newline)
