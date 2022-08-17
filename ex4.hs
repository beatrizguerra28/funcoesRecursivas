euclides  m n
    | m == n = n
    | otherwise = euclides(max m n - min m n) (min m n)
    where
        maximo = max m n
        minimo = min m n
