#lang racket

(require "class01.rkt")
(require "interp-r1.rkt")


;;pass 1
(let ([x 32])
  (let ([y 10])
    (+ x y)))

;;gensym
;;(let ([x.1 32])
;;  (let ([y.2 10])
;;   (+ x.1 y.2)))

;;======================
(let ([x 22])
  (+ (let ([x 10])
       x)
     x))

;;uniquify -exp
;;statued recursion
;;env, dict-set and dict-get

;;(let ([x.1 22])
;;  (+ (let ([x.2 10])
;;       x.2)
;;     x.1))

;;===========================
;;pass 2 non-pass

(+ (+ 42 10) (- 10))

(let ([tmp.1 (+ 42 10)])
	(let ([tmp.2 (- 10)])
    	(+ tmp.1 tmp.2)))

;;===========================
(let ([a 42])
  (let ([b a])
    a))

;;but complie
(let ([tmp.1 42])
  (let ([a tmp.1])
    (let ([tmp.2 a])
      (let ([b tmp.2])
        b))))

;;==============================
;;we jsut want to do this
(let ([a 42])
  (let ([b a])
    a))

;;we can do split it with two ways
;;1. we only deal with the expr
;;2. we only deal with the atom

;;so we can do this
;;rco-atom: exp -> atom x (var x exp)list
;;rco-exp: exp -> exp


