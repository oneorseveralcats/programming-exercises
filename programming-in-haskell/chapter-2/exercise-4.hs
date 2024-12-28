-- The library function last selects the last element of a non-empty list; for example, last [1,2,3,4,5] = 5. Show how the function last could be defined in terms of the other library functions introduced in this chapter. Can you think of another possible definition?

last' xs = head $ reverse xs

last'' xs = xs !! (length xs - 1)
