- Essa função mesclar vista abaixo foi implementada com base na resposta aceita dessa pergunta:
- https://stackoverflow.com/questions/15211629/merge-finite-sorted-list-in-haskell
- Fiz minhas mudanças substituindo os guardas por um se mais compreensível.
mesclar  ::  Ord  a  => [ a ] -> [ a ] -> [ a ]
mesclar xs []  = xs
merge [] ys = ys
mesclar (x : xs) (y : ys) =  se x < y então x : mesclar xs (y : ys) senão y : mesclar (x : xs) ys

- O Vscode me sugeriu utilizar uma função splitAt e passar a metade do comprimento da lista
- para dividi-la em duas partes. Se o valor do tamanho para o ímpar, a segunda lista sempre
- será maior.
metades  :: [ a ] -> ([ a ], [ a ])
metades xs =  splitAt ( length xs `div`  2 ) xs

- Função que vai dividir a lista em duas partes, classificá-las
- e por fim juntá-las.
mergesort  ::  Ord  a  => [ a ] -> [ a ]
mergesort []   =  []
mergesort [x] = [x]
mergesort xs = merge (mergesort esquerda) (mergesort direita)
    onde (esquerda, direita) = metades xs

- Resultados esperados:
- [2,3,6,8,9,24,32,43,75,83]
- [10,28,33,43,49,55,74,87,90]
main  ::  IO  ()
main =  do 
    print  $ mergesort [ 3 , 6 , 8 , 2 , 9 , 43 , 75 , 24 , 32 , 83 ]
    print  $ mergesort [ 10 , 55 , 87 , 90 , 33 , 28 , 74 , 49 , 43 ]
