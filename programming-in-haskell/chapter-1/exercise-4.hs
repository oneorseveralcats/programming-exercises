-- How should the definition of the function qsort be modified so that it produces a reverse sorted version of a list?

qsort :: Ord x => [x] -> [x]
qsort [] = []
qsort (x:xs) = qsort smaller ++ [x] ++ qsort larger
  where
    smaller = [a | a <- xs, a <= x]
    larger  = [a | a <- xs, a > x] 

qsortReverse :: Ord x => [x] -> [x]
qsortReverse [] = []
qsortReverse (x:xs) = qsortReverse larger ++ [x] ++ qsortReverse smaller
  where
    smaller = [a | a <- xs, a <= x]
    larger  = [a | a <- xs, a > x] 

qsortReverse' :: Ord x => [x] -> [x]
qsortReverse' [] = []
qsortReverse' xs = reverse (qsort xs)
