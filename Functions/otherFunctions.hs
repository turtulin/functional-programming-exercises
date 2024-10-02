-- Exercises on simple functions

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

absolute :: Int -> Int
absolute x | x >= 0    = x
           | otherwise = negate x

p :: Float -> Float
p x = x ** 2 + 2 * x + 1