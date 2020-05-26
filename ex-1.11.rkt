#lang racket

; recursive version
(define (f2 n) 
    (cond ((< n 3) n) 
         (else (+ (f (- n 1)) 
                  (* 2 (f (- n 2))) 
                  (* 3 (f (- n 3))))))) 


; iterative version
; f's values for n-1 n-2 n-3 are passed as arguments to f-iter
(define (f n)
  (define (f-iter f-1 f-2 f-3 i n)
    (cond ((= i n) (+ f-1 (* 2 f-2) (* 3 f-3)))
          (else (f-iter (f i) f-1 f-2 (+ i 1) n))))
  (cond ((< n 3) n)
        (else (f-iter (f 2) (f 1) (f 0) 3 n))))


