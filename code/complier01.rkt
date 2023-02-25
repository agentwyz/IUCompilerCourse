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
;;env

;;(let ([x.1 22])
;;  (+ (let ([x.2 10])
;;       x.2)
;;     x.1))