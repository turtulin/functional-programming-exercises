red :: (a -> b -> b) -> b -> [a] -> b
red _ acc [] = acc
red f acc (x : xs) = f x (red f acc xs)

conj :: [Bool] -> Bool
conj xs = red (&&) True xs

prod :: [Int] -> Int
prod xs = red (*) 1 xs

