-- Write down definitions that have the following types; it does not matter what the definitions actually do as long as they are type correct.
-- 
-- bools :: [Bool]
-- 
-- nums :: [[Int]]
-- 
-- add :: Int -> Int -> Int -> Int
-- 
-- copy :: a -> (a,a)
-- 
-- apply :: (a -> b) -> a -> b

bools :: [Bool]
bools = [True]

nums :: [[Int]]
nums = [[1]]

add :: Int -> Int -> Int -> Int
add x y z = x

copy :: a -> (a,a)
copy x = (x,x)

apply :: (a -> b) -> a -> b
apply f x = f x
