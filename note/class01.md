## rules

define programming language rules:

we use ebnf to define the rule:

1. exp ::= integer
2. exp ::= (read)
3. exp ::= (- exp)
        |(+ exp exp)
4. R0  ::= exp

for example: `(- 42)`

the 42 is a exp
so (- 42) is rules(3)

## abstract tree

exp := (let int)
    | (prim 'read '())
    | (prim '- (list exp))
    | (prim '+ (list exp exp))

R0 ::= (Program '() exp)

'() is information about language

also we use list-max function to evaluate the hight of exp