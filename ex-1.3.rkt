#lang sicp

(define (square x) (* x x ))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

(define (sum-of-squares-of-two-larger-numbers a b c)
    (cond ((and (>= a c) (>= b c)) (sum-of-squares a b))
          ((and (>= a b) (>= c b)) (sum-of-squares a c))
          ((and (>= b a) (>= c a)) (sum-of-squares b c))))

(sum-of-squares-of-two-larger-numbers 1 2 3) ; should equal 13