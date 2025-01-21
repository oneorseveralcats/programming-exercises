-- How does the recursive version of the factorial function behave if applied to a negative argument, such as (-1)? Modify the definition to prohibit negative arguments by adding a guard to the recursive case.

-- if given a negative number it will never reach a base case.
fac :: Int -> Int
fac 0 = 1
fac n
  | n < 0 = 0
  | otherwise = n * fac (n - 1)
