
///mergesort3 :: Ord a => [a] -> [a] -> [a]
mergesort3 = xs [] = xs
merge [] ys = ys
merge (x:xs) (y:ys) = if x < y then x : merge xs (y:ys) else y : merge (x:xs) ys

metades3 l = (take n l, drop m l)
            where
                tamanho = length l
                m = tamanho 'div' 2
                n = tamanho - m
                n = if tamanho % 2 == 0 then tamanho 
metades3 xs = splitAt (length xs `div` 2) xs

mergesort :: Ord a => [a] -> [a]
mergesort []  = []
mergesort [x] = [x]
mergesort xs = merge (mergesort esquerda) (mergesort direita) 
    where (esquerda, direita) = metades xs

main :: IO ()
main = do 
    print $ mergesort [3, 6, 8, 2, 9, 43, 75, 24, 32, 83]
    print $ mergesort [10, 55, 87, 90, 33, 28, 74, 49, 43]
