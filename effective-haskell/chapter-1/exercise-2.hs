-- The Fibonacci Sequence
--
-- The Fibonacci sequence is a sequence of numbers that can be defined 
-- recursively. The first 10 numbers of the Fibonacci sequences are:
--  0,1,1,2,3,5,8,13,21,34. You can calculate any given Fibonacci number, n, 
-- by adding up the two previous Fibonacci numbers.
-- 
-- Write a function that will compute the nth Fibonacci number for any given 
-- number, n.
module Fibbonaci where

fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib (n-2)

fib' :: Int -> Int
fib' n = go n (0,1)
  where
    go 0 _ = 0
    go 1 (a,b) = b
    go n (a,b) = go (n-1) (b, b+a)


-- book's solution
fibonacciBook n
  | n <= 0 = 0
  | n == 1 = 1
  | otherwise = fibonacciBook (n - 1) + fibonacciBook (n - 2)
