myMap :: (a -> b) -> [a] -> [b]
myMap _ [] = []
myMap f (x : xs) = f x : myMap f xs

neg :: [Bool] -> [Bool]
neg xs = myMap not xs

next :: [Int] -> [Int]
next xs = myMap succ xs