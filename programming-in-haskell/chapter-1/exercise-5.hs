-- What would be the effect of replacing <= by < in the original definition of qsort? Hint: consider the example qsort [2,2,3,1,1].

-- answer: deduplicate the list

qsort' :: Ord x => [x] -> [x]
qsort' [] = []
qsort' (x:xs) = qsort' smaller ++ [x] ++ qsort' larger
  where
    smaller = [a | a <- xs, a < x]
    larger  = [a | a <- xs, a > x] 

