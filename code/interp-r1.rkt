#lang racket
(require racket/fixnum)
(require "class01.rkt")

;;(provide interp-R1 interp-C0)
(define (interp-exp e)
  (match e
    [(Int n) n]
    [(Prim 'read '())
     (define r (read))
     (cond [(fixnum? r) r]
           [else (error 'interp-P1 "expected an integer" r)])]
    [(Prim '- (list e))
     (let ([v (interp-exp e)])
     (fx- 0 v))]
    [(Prim '+ (list e1 e2))
     (let ([v1 (interp-exp e1)]
           [v2 (interp-exp e2)])
     (fx+ v1 v2))]))

(define (interp-R0 p)
  (match p
    [(Program info e) (interp-exp e)]))

;;some tests
;;(display "------------")
;;(fx+ 1 2)
;;(fx- 0 1)

(interp-R0 (Program 'info (Prim '- (list (Int 19)))))



