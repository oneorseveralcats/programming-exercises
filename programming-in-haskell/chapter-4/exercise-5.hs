-- Without using any other library functions or operators, show how the meaning of the following pattern matching definition for logical conjunction && can be formalised using conditional expressions:
--
--   True && True = True
--   _    && _    = False
--
-- Hint: use two nested conditional expressions.

(&&&) :: Bool -> Bool -> Bool
(&&&) x y =
  if x == True then
    if y == True then
      True
    else
      False
  else
    False
