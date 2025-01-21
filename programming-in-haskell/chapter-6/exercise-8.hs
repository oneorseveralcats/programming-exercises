-- Using merge, define a function msort :: Ord a => [a] -> [a] that implements merge sort, in which the empty list and singleton lists are already sorted, and any other list is sorted by merging together the two lists that result from sorting the two halves of the list separately.
--
-- Hint: first define a function halve :: [a] -> ([a],[a]) that splits a list into two halves whose lengths differ by at most one.

merge :: (Ord a) => [a] -> [a] -> [a]
merge xs [] = xs
merge [] ys = ys
merge (x : xs) (y : ys)
  | x > y = y : merge (x : xs) ys
  | x < y = x : merge xs (y : ys)
  | otherwise = x : y : merge xs ys

halve :: [a] -> ([a], [a])
halve xs = splitAt (length xs `div` 2) xs

msort :: (Ord a) => [a] -> [a]
msort [] = []
msort [x] = [x]
msort (x : xs) = []

-- TODO: Finish
