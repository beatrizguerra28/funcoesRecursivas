- A)
e '  :: [ Bool ] ->  Bool 
e ' () =  True 
e '(x : xs) = x && e' xs

- B)
concat2 []  =  []
concat2 (x : xs) = x ++ concat2 xs

- C)
replicate2 0 _ = []
replicate2  n v = v : replicate2 (n-1) v 


- D)
(!!!)  :: [ a ] ->  Int  ->  a
[] !!! _ = error "indice muito grande"
(x:xs) !!! 0 = x
(x:xs) !!! n = xs !!! (n - 1)


- E)
elem '  ::  Eq  a  =>  a  -> [ a ] ->  Bool
elem ' _ []  =  False
elem ' v (x : xs)
    | v == x =  True 
    |  otherwise//caso contrário  = elem 'e v xs

///main  ::  IO  ()
main =  do
    print  $ e '[ True , True , True ]
    imprimir  $ concat '[[ 1 , 2 , 3 ], [ 4 , 5 , 6 ]]
    imprimir  $ [ 1 , 2 , 3 , 4 , 5 , 6 ] !!!  4
    print  $ elem ' 7 [ 1 , 2 , 3 , 4 , 5 , 6 , 7 , 8 ]
