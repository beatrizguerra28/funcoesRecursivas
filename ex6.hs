mesclar  ::  Ord  a  => [ a ] -> [ a ] -> [ a ]
mesclar []l  = l
merge l[] = l
mesclar (x : xs) (y : ys)
    | x -< y = [x] ++ merge xs (y : ys)
    |  otherwise//caso contrário  = [y] ++ merge (x : xs) ys

///main  ::  IO  ()
main =  do
    print  $ merge [ 1 .. 5 ] [ 9 .. 15 ]
