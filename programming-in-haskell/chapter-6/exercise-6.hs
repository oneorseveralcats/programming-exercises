-- Without looking at the definitions from the standard prelude, define the following library functions on lists using recursion.
--
--   a. Decide if all logical values in a list are True:
--
--        and :: [Bool] -> Bool

and' :: [Bool] -> Bool
and' [] = True
and' (x : xs)
  | x == False = False
  | otherwise = and' xs

--   b. Concatenate a list of lists:
--
--        concat :: [[a]] -> [a]

concat' :: [[a]] -> [a]
concat' [] = []
concat' (xs : xss) = xs <> concat' xss

--   c. Produce a list with n identical elements:
--
--        replicate :: Int -> a -> [a]

replicate' :: Int -> a -> [a]
replicate' 0 _ = []
replicate' n x = x : replicate' (n - 1) x

--   d. Select the nth element of a list:
--
--        (!!) :: [a] -> Int -> a

(!~!) :: [a] -> Int -> a
(!~!) (x : xs) n
  | n < 0 = error "negative number"
  | n == 0 = x
  | n > 0 = xs !~! (n - 1)

--   e. Decide if a value is an element of a list:
--
--        elem :: Eq a => a -> [a] -> Bool

elem' :: (Eq a) => a -> [a] -> Bool
elem' _ [] = False
elem' el (x : xs)
  | el == x = True
  | otherwise = elem' el xs

-- Note: most of these functions are defined in the prelude using other library functions rather than using explicit recursion, and are generic functions rather than being specific to the type of lists.
