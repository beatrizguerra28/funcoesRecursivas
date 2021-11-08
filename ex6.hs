mesclar  ::  Ord  a  => [ a ] -> [ a ] -> [ a ]
mesclar xs []  = xs
merge [] ys = ys
mesclar (x : xs) (y : ys)
    | x < y = x : mesclar xs (y : ys)
    |  caso contrário  = y : merge (x : xs) ys

main  ::  IO  ()
main =  do
    print  $ merge [ 1 .. 5 ] [ 9 .. 15 ]
