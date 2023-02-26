#lang racket

(struct Stack (empty           ;;stack -> bool
               isEmpty         ;;stack -> bool
               consList        ;;a * a Stack  -> a stack
               head            ;;a Stack -> a
               tail))          ;;a Stack -> a Stack
;;=====================
(define isEmpty
  (lambda s
    (null? s)))

(define consList
  (lambda (x s)
    (cons x s)))

(define head
  (lambda (x)
    (car x)))

(define tail
  (lambda (x)
    (cdr x)))

;;======an instance========
(define MyList (Stack
           '()
           isEmpty
           consList
           head
           tail))

;;====some tests=========
(Stack-empty MyList)
((Stack-isEmpty MyList) '(1))
((Stack-consList MyList) '1 '(2))
((Stack-head MyList) '(1 2 3))
((Stack-tail MyList) '(1 2 3))


;;=================================
(define-struct Person(
                     name
                     age))
(Person-name (Person "sb" 2))