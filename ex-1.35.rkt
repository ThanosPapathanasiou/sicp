#lang sicp

;; show that φ is a fixed point of the transformation of x -> 1 + 1/x
;; x -> 1 + 1/x
;; x^2 -> x + 1
;; that is exactly the definition from the early chapter

;; let's solve it

;; x^2- x - 1 = 0
;; x = (1 + sqrt(5)) / 2


;; fixed point 
(define tolerance 0.00001)
(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2))
       tolerance))
  (define (try guess)
    (let ((next (f guess)))
      (if (close-enough? guess next)
          next
          (try next))))
  (try first-guess))


(fixed-point (lambda (x) (+ 1 (/ 1 x))) 1.0)

;; average damping
(define (average x y) (/ (+ x y) 2))
(fixed-point (lambda (x) (average x (+ 1 (/ 1 x)))) 1.0) 