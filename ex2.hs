somar  ::  Int  ->  Int
somar x 
    | x ==  0  = x
    |  caso contrário  = x + somar (x -  1 )

main  ::  IO  ()
main =  do
    imprimir  $  show (somar 5 )
