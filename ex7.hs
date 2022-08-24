
mergesort3 :: Ord a => [a] -> [a] 
mergsort3 [] = []
mergsort3 [x] = [x]
mergesort3 l = merge3 (mergesort3 esq) (mergsort3 dir) 
               where    
                        (esq, dir) = metades3 l 

metades3 l = (take n l, drop m l)
            where
                 tamanho = length l
                 m = tamanho ´div´ 2
                 n = if tamanho´mod´ 2 = 1 then tamanho - m - 1
                 else tamanho - m

