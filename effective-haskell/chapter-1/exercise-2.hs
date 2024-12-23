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
