-- In a similar way to && in section 4.4, show how the disjunction operator || can be defined in four different ways using pattern matching.

(|||) :: Bool -> Bool -> Bool
True  ||| True  = True
True  ||| False = True
False ||| True  = True
False ||| False = False

(||||) :: Bool -> Bool -> Bool
True  |||| _    = True
_     |||| True = True
_     |||| _    = False

(|||||) :: Bool -> Bool -> Bool
False ||||| b = b
True  ||||| _ = True

(||||||) :: Bool -> Bool -> Bool
b |||||| c 
  | b == c = b
  | otherwise = True
