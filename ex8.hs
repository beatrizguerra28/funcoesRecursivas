- A)
soma '  :: [ Int ] ->  Int 
soma ' []  =  0
soma '[x] = x
soma '(x : xs) = x + soma' xs

- B)
pegue '  ::  Int  -> [ a ] -> [ a ]
pegue ' 0 xs =  []
pegue 'm [x] = [x]
pegue 'm (x : xs) = x : pegue' (m - 1 ) xs

- C)
último '  :: [ a ] ->  a
último '[x] = x
último '(x : xs) = último' xs

main  ::  IO  ()
main =  do
    imprimir  $ sum '[ 1 .. 10 ]
    print  $ take ' 3 [ 1 .. 10 ]
    print  $ last '[ 1 .. 10 ]
