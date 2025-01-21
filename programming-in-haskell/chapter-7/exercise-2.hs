-- Without looking at the definitions from the standard prelude, define the following higher-order library functions on lists.
--
--   a. Decide if all elements of a list satisfy a predicate:
--
--      all :: (a -> Bool) -> [Bool] -> Bool

all' :: (a -> Bool) -> [a] -> Bool
all' p = and . map p

--   b. Decide if any element of a list satisfies a predicate:
--
--      any :: (a -> Bool) -> [Bool] -> Bool

any' :: (a -> Bool) -> [a] -> Bool
any' p = or . map p

--   c. Select elements from a list while they satisfy a predicate:
--
--      takeWhile :: (a -> Bool) -> [a] -> [a]

takeWhile' :: (a -> Bool) -> [a] -> [a]
takeWhile' p [] = []
takeWhile' p (x : xs)
  | p x = x : takeWhile' p xs
  | otherwise = []

--   d. Remove elements from a list while they satisfy a predicate:
--
--      dropWhile :: (a -> Bool) -> [a] -> [a]

dropWhile' :: (a -> Bool) -> [a] -> [a]
dropWhile' p [] = []
dropWhile' p (x : xs)
  | p x = dropWhile' p xs
  | otherwise = x : xs

-- Note: in the prelude the first two of these functions are generic functions rather than being specific to the type of lists.
