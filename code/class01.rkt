#lang racket

(provide (all-defined-out))

(struct Int (value))
(struct Prim (op arg))
(struct Read ())
(struct Add (left right))
(struct Neg (value))

;;program
(struct Program (info body))

(define (list-max ls)
  (foldl max 0 ls))

(define (hight e)
  (match e
    [(Int n) 1]
    [(Prim op e*)
     (add1 (list-max (map hight e*)))]))

(define E1 (Int 42))
(define E2 (Prim 'read '()))
(define E3 (Prim '- (list E1)))
(define E4 (Prim '+ (list E3 (Int 5))))
(define E5 (Prim '+ (list E2 (Prim '- (list E2)))))

(hight E1)
(hight E2)
(hight E3)
(hight E4)
(hight E5)

;;=========================
;;some tests
;;(define a (list 1 2 3 5))
;;(list-max a)
;;(add1 1)
;;(struct st (type id sign value))
;;(int a = 2)