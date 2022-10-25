#lang scheme

;;Cons单元
(cons 1 2)
(cons (cons 1 2) (cons 3 4))


(car (list 1 2 3 4))
(cdr (list 1 2 3 4))

(car (list 1 2 3 (list 4 5 6)))
(cdr (list 1 2 3 (list 4 5 6)))

(car (list (list 1 2 3) 4 5 6))
(cdr (list (list 1 2 3) 4 5 6))


(car (list (list 1 2 3) (list 4 5 6)))
(cdr (list (list 1 2 3) (list 4 5 6)))
