-- This file contains the implementation of the map function

myMap :: (a -> b) -> [a] -> [b]
myMap _ [] = []
myMap f (x : xs) = f x : myMap f xs

neg :: [Bool] -> [Bool]
neg = myMap not

next :: [Int] -> [Int]
next = myMap succ