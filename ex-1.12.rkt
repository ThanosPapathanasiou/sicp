#lang racket

(define (compute-pascal-triangle row column)
  (cond ((= column 1) 1)
        ((= column row) 1)
        (else (+ (compute-pascal-triangle (- row 1) (- column 1))
                 (compute-pascal-triangle (- row 1) column)))))


(compute-pascal-triangle 5 3)
