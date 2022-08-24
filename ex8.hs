- A)
soma '  :: [ Int ] ->  Int 
soma ' []  =  0
soma '(x : xs) = x + soma' xs

- B)
tamanho :: [a] -> Int
tamanho [] = 0
tamanho(x:xs) = 1 + tamanho xs 

- C)
último '[] = error "lista vazia nao tem ultimo elemento"
último '[x] = x
último '(x : xs) = último' xs


