module Curry where

curry' :: ((a, b) -> c) -> a -> b -> c
curry' f a b = f (a, b)

uncurry' :: (a -> b -> c) -> (a, b) -> c
uncurry' f p = f (fst p) (snd p)
