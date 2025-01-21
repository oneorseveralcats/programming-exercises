-- Define a recursive function merge :: Ord a => [a] -> [a] -> [a] that merges two sorted lists to give a single sorted list. For example:
--
--   > merge [2,5,6] [1,3,4]
--
--   [1,2,3,4,5,6]
--
-- Note: your definition should not use other functions on sorted lists such as insert or isort, but should be defined using explicit recursion.

merge :: (Ord a) => [a] -> [a] -> [a]
merge xs [] = xs
merge [] ys = ys
merge (x : xs) (y : ys)
  | x > y = y : merge (x : xs) ys
  | x < y = x : merge xs (y : ys)
  | otherwise = x : y : merge xs ys
