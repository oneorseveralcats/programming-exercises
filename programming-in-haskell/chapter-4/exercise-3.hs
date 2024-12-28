-- Consider a function safetail :: [a] -> [a] that behaves in the same way as tail except that it maps the empty list to itself rather than producing an error. Using tail and the function null :: [a] -> Bool that decides if a list is empty or not, define safetail using:
-- 
-- a. a conditional expression;
-- 
-- b. guarded equations;
-- 
-- c. pattern matching.

safetailA :: [a] -> [a]
safetailA xs =
  if null xs then
    []
  else
    tail xs

safetailB :: [a] -> [a]
safetailB xs
  | null xs   = []
  | otherwise = tail xs

safetailC :: [a] -> [a]
safetailC [] = []
safetailC xs = tail xs
