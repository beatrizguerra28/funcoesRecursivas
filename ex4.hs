euclides  ::  Int  ->  Int  ->  Int 
euclides xy 
    | x == y = x
    | x > y = euclídeos (x - y) y
    |  caso contrário  = euclídeos x (y - x)

main  ::  IO  ()
main =  do
    imprimir  $ euclídeos 6  27
