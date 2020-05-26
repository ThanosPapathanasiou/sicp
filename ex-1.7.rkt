#lang racket

(define (square x)
  (* x x ))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))


(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 152587890625)
(sqrt 390625)
(sqrt 625)
(sqrt 25)
(sqrt 0.25)
(sqrt 0.0025)
(sqrt 0.000025)

; We can get a better precision by changing the tolerance
; to be relative to the number we want to estimate it's square root.
; That way large numbers will have a larger estimate and smaller numbers a smaller estimate
(define (good-enough2? guess x)
  (< (abs (- (square guess) x)) (/ x 1000000)))

(define (sqrt-iter2 guess x)
  (if (good-enough2? guess x)
      guess
      (sqrt-iter2 (improve guess x) x)))

(define (sqrt2 x)
  (sqrt-iter2 1.0 x))

(sqrt2 152587890625)
(sqrt2 390625)
(sqrt2 625)
(sqrt2 25)
(sqrt2 0.25)
(sqrt2 0.0025)
(sqrt2 0.000025)
