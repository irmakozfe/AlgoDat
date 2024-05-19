#lang racket
(define (caesar data key)
  (define (iter data backup key)
    (if (empty? data)
        (list)
        (append (list (remainder (+ (car key) (car data)) 10))
                (iter (cdr data) backup (if (empty? (cdr key)) backup (cdr key)))
                )))
  (iter data key key))
