-- Manual Currying
--
-- Using what you’ve learned in this chapter, try implementing your own version 
-- of curry and uncurry.
module Curry where

curry' :: ((a, b) -> c) -> a -> b -> c
curry' f a b = f (a, b)

uncurry' :: (a -> b -> c) -> (a, b) -> c
uncurry' f p = f (fst p) (snd p)

-- book's solution
curryBook f a b = f (a,b)
