-- Filter function implementation

filt :: (a -> Bool) -> [a] -> [a]
filt _ [] = []
filt f (x : xs) | f x = x : filt f xs
                | otherwise = filt f xs

myEven :: [Int] -> [Int]
myEven = filt even

nulle :: [[a]] -> [[a]]
nulle = filt null