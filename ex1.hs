fatorial  :: ( Ord  p , Num  p ) =>  p  ->  p
fatorial n
    | n <=  0  =  1
    |  caso contrário  = n * fatorial (n - 1 )

main  ::  IO  ()
main =  do
    imprimir  $  show (fatorial 6 )
