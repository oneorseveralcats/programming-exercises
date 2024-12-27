-- Zipping Lists
-- The zip function is a special case of a more general function available in 
-- Prelude called zipWith. The zipWith function combines two lists according to
-- a function. Consider this implementation of zip in terms of zipWith:
-- 
--  λ let zip' = zipWith (,)
--  λ zip' [1..5] [5,4..1]
--   [(1,5),(2,4),(3,3),(4,2),(5,1)]
--
-- Implement the zipWith function with and without using list comprehensions. Can you implement zipWith using foldl?

-- without list comprehensions
zipWith' f (x:xs) (y:ys) = 
  f x y <> zipWith' f xs ys
zipWith' _f _xs _ys = []


-- with list comprehensions
zipWith'' f xs ys =
  [f (xs !! idx) (ys !! idx) | idx <- [0 .. len - 1]]
  where
    len = min (length xs) (length ys)


-- using foldl
zipWith''' f xs ys = []
