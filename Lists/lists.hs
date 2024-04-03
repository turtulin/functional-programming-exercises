myLength :: [Int] -> Int
myLength [] = 0
myLength (x : xs) = 1 + myLength xs

mySum :: [Float] -> Float
mySum [] = 0
mySum (x : xs) = x + mySum xs

myProduct :: [(Int, Int)] -> [Int]
myProduct [] = []
myProduct ((a, b) : xs) = a * b : myProduct xs

listEven :: [Int] -> [Int]
listEven [] = []
listEven (x : xs) | even x = x : listEven xs
                  | otherwise = listEven xs

