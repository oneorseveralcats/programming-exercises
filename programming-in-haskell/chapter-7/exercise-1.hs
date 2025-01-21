-- Show how the list comprehension [f x | x <- xs, p x] can be re-expressed using the higher-order functions map and filter.

lc p f xs = [f x | x <- xs, p x]

mf p f xs = map f $ filter p xs
