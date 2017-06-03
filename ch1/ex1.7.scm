#!/usr/bin/guile -s
!#

; define square
(define (square x) (* x x))

; define average
(define (average x y) 
	(/ (+ x y)2))

; improve is to average x divided by guess
; define improve
(define (improve guess x) 
	(average guess (/ x guess)))

; define good-enough
(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

;(display (good-enough? 5 100))
;(newline)
(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(display (sqrt-iter 5 100))
(newline)