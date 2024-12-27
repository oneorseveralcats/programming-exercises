-- Reversing a List with Folds
--
-- It’s possible to easily implement a reverse function using folds. Try to 
-- implement a function that will reverse a list using both foldl and foldr. 
-- Which one is simpler? why? Might one be more efficient than the other?

reverseLeft :: [x] -> [x]
reverseLeft = 
  foldl go []
  where
    go acc x = x:acc

reverseRight :: [x] -> [x]
reverseRight = 
  foldr go []
  where
    go x acc = acc ++ [x]

-- book's solution
reverseLeftBook :: [x] -> [x]
reverseLeftBook = foldl insertElem []
  where insertElem reversed a = a : reversed

reverseRightBook :: [x] -> [x]
reverseRightBook = foldr insertElem []
  where
    insertElem a reversed = reversed <> [a]
