-- Define a function third :: [a] -> a that returns the third element in a list that contains at least this many elements using:
-- 
-- a.head and tail;
-- 
-- b.list indexing !!;
-- 
-- c.pattern matching.

thirdA :: [a] -> a
thirdA xs = head $ tail $ tail xs

thirdB :: [a] -> a
thirdB xs = xs !! 2

thirdC :: [a] -> a
thirdC (_:_:x:_) = x
