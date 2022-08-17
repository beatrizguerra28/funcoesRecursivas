euclides  m n
    | m == n = n
    | otherwise = euclides(maximo- minimo) minimo 
    where
        maximo = max m n
        minimo = min m n
