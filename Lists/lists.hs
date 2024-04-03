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

inverse :: [Int] -> [Int]
inverse [] = []
inverse (x : xs) = inverse xs ++ [x]

altInverse :: [Int] -> [Int]
altInverse xs = inv xs []
  where
    inv [] acc = acc
    inv (x : xs) acc = inv xs (x : acc)

myNegate :: [Bool] -> [Bool]
myNegate [] = []
myNegate (x : xs) = not x : myNegate xs

conjunction :: [Bool] -> Bool
conjunction [] = True
conjunction (x : xs) = x && conjunction xs

disjunction :: [Bool] -> Bool
disjunction [] = False
disjunction (x : xs) = x || disjunction xs

prods :: [Int] -> Int
prods [] = 1
prods (x : xs) = x * prods xs

listOdd :: [Int] -> [Int]
listOdd [] = []
listOdd (x : xs) | odd x = x : listOdd xs
                 | otherwise = listOdd xs

lastElement :: [Int] -> Int
lastElement [x] = x
lastElement (_ : xs) = lastElement xs

polynomial :: [Float] -> Float -> Float
polynomial [] _ = 0
polynomial (x : xs) n = x * n ^ power + polynomial xs n
 where 
    power = power + 1

