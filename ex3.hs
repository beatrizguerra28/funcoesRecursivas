(^^^)  :: ( Fractional  a , Eq  a , Ord  a ) =>  a  ->  a  ->  a
(^^^) x 0  =  1
(^^^) xy
    | y <  0  =  1  / (x ^^^  abs y)
    |  caso contrário  = x * (x ^^^ (y - 1 ))


main  ::  IO  ()
main =  do
    imprimir  $  10  ^^^ ( - 1 )
