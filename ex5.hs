- A)
e '  :: [ Bool ] ->  Bool 
e ' []  =  Falso 
e '[x] = x
e '(x : xs) = x && e' xs

- B)
concat '  :: [[ a ]] -> [ a ]
concat ' []  =  []
concat '(x : xs) = x ++ concat' xs

- C)
replicar '  ::  Int  ->  a  -> [ a ]
replicar ' 0 y =  []
replicar 'xy = y : replicar' (x - 1 ) y

- D)
(!!!)  :: [ a ] ->  Int  ->  a
(!!!) (x : xs) 0  = x
(!!!) (x : xs) i = xs !!! (i - 1 )

- E)
elem '  ::  Eq  a  =>  a  -> [ a ] ->  Bool
elem 'e []  =  Falso
elem 'e (q : qs)
    | q == e =  Verdadeiro 
    |  caso contrário  = elem 'e qs

main  ::  IO  ()
main =  do
    print  $ e '[ True , True , True ]
    imprimir  $ concat '[[ 1 , 2 , 3 ], [ 4 , 5 , 6 ]]
    imprimir  $ [ 1 , 2 , 3 , 4 , 5 , 6 ] !!!  4
    print  $ elem ' 7 [ 1 , 2 , 3 , 4 , 5 , 6 , 7 , 8 ]
