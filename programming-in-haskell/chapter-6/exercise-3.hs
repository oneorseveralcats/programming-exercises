-- Define the exponentiation operator ^ for non-negative integers using the same pattern of recursion as the multiplication operator *, and show how the expression 2 ^ 3 is evaluated using your definition.

(^~^) :: Int -> Int -> Int
(^~^) x 0 = 1
(^~^) x y = x * (x ^~^ (y - 1))

-- 2^3
-- 2 *(2^(2))
-- 2 * 2 * (2^(1))
-- 2 * 2 * 2 * (2^(0))
-- 2 * 2 * 2 * 1
-- 8
