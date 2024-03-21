area1 :: Float -> Float
-- One can also use (*) 6 3 instead of 6 * 3
-- ** works on floating point variables
area1 r = pi * r ** 2

area2 :: Float -> Float -> Float
-- n / m        floating result
-- n `div` m    integer result
-- div n m      integer result
area2 b h = b * h / 2

isEven :: Int -> Bool
isEven n = n `mod` 2 == 0

isOdd :: Int -> Bool
isOdd n = not (isEven n)

isOdd1 :: Int -> Bool
isOdd1 = not . isEven 

leap :: Int -> Bool
leap n = (n `isDivisor` 4 &&
         not (n `isDivisor` 100)) ||
         n `isDivisor` 400
 where 
    isDivisor :: Int -> Int -> Bool
    isDivisor n m = n `mod` m == 0

