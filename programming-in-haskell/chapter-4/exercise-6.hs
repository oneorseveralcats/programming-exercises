-- Do the same for the following alternative definition, and note the difference in the number of conditional expressions that are required:
--
--  True && b= b
--  False && _ = False

(&&&) :: Bool -> Bool -> Bool
(&&&) x y =
  if x == True then
    y
  else
    False
