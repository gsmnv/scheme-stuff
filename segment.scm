(module segment racket

(define (make-rectangle a b)
  (cons a (make-segment
             (make-point
              (x-point (start-segment a))
              (y-point (start-segment a)))
             b)))

(define (a-side rect)
  (cons (start-segment (car rect))
        (end-segment (car rect))))

(define (b-side rect)
  (cons (start-segment (cdr rect))
        (end-segment (cdr rect))))

(define (P-rect rect)
  (* 2
     (+ (length-side rect a-side)
        (length-side rect b-side))))

(define (S-rect rect)
  (* (length-side rect a-side)
     (length-side rect b-side)))

(define (length-side rect side)
  (sqrt (+ (expt (- (x-point (car (side rect)))
                    (x-point (cdr (side rect)))) 2)
           (expt (- (y-point (car (side rect)))
                    (y-point (cdr (side rect)))) 2))))

(define (make-segment start end) (cons start end))
(define (start-segment point) (car point))
(define (end-segment point) (cdr point))
(define (make-point x y) (cons x y))
(define (x-point point) (car point))
(define (y-point point) (cdr point))

(define (print-point point)
  (display "(")
  (display (x-point point))
  (display ",")
  (display (y-point point))
  (display ")")
  (newline))

(define (print-rectangle rect)
  (print-side rect a-side "a")
  (print-side rect b-side "b")
  (display "----")
  (newline)
  (display "P: ")
  (display (P-rect rect))
  (newline)
  (display "S: ")
  (display (S-rect rect))
  (newline))

(define (print-side rect side name)
  (display name)
  (display ":")
  (newline)
  (display "length: ")
  (display (length-side rect side))
  (newline)
  (print-point (car (side rect)))
  (print-point (cdr (side rect))))

)
