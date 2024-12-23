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

  

