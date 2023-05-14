#lang racket

;;创建一个节点
(struct Int (value))
(struct Prim (op args))

(struct Read ())
(struct Add (left rigit))
(struct Neg (value))


;;创建一个instance
(define eight (Int 8))
(define neg-eigit (Prim '- (list eight)))

(define rd (Prim 'read '()))


