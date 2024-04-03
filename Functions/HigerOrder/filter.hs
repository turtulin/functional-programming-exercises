filt :: (a -> Bool) -> [a] -> [a]
filt _ [] = []
filt f (x : xs) | f x = x : filt f xs
                | otherwise = filt f xs

myEven :: [Int] -> [Int]
myEven xs = filt even xs

nulle :: [[a]] -> [[a]]
nulle xss = filt null xss