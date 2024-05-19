#lang racket
(define (drehe liste)
  (reverse liste))

(define (drehe liste)
  (define (iter liste new)
    (if (empty?  liste)
        new
        (iter (cdr liste) (append (list (car liste)) new))))
  (iter liste '()))