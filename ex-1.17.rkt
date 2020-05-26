#lang sicp


; original version
(define (mul a b)
  (if (= b 0)
      0
      (+ a (mul a (- b 1)))))

; fast version
(define (fast-mul a b)
  (define (double x) (+ x x))
  (define (halve x) (/ x 2))

  (cond ((= b 0) 0)
        ((even? b) (double (fast-mul a (halve b))))
        (else (+ a (fast-mul a (- b 1))))))

(fast-mul 10 5)
  