-- Implementing foldr using recursion

red :: (a -> b -> b) -> b -> [a] -> b
red _ acc [] = acc
red f acc (x : xs) = f x (red f acc xs)

conj :: [Bool] -> Bool
conj = red (&&) True

prod :: [Int] -> Int
prod = red (*) 1