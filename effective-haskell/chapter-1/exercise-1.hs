-- Factorials
--
-- The factorial function is a simple function that you can define recursively. 
-- You can compute the factorial of a number, n, by multiplying all of the 
-- numbers up to n:
-- 
--   factorial 5 = 5 * 4 * 3 * 2 * 1 = 120
--
-- Try implementing your own factorial function.
module Factorial where 

factorial :: Int -> Int
factorial 1 = 1
factorial x = 
  x * factorial (x-1)

factorial' :: Int -> Int
factorial' n = go n 1
  where
    go :: Int -> Int -> Int
    go 1 a = a
    go n a = go (n-1) (a*n)


-- book's solution
factorialBook n
  | n <= 1 = 1
  | otherwise = n * factorial (n - 1)
  

