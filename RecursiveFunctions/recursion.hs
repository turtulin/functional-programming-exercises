fibonacci :: Int -> Int
fibonacci k | k == 0 = 0
            | k == 1 = 1
            | otherwise = fibonacci (k - 1) + fibonacci (k - 2)

powN :: Int -> Int
powN n | n == 0 = 1
       | n > 0  = 2 * powN (n - 1)

-- This is an alternative way to express | 
somma :: Int -> Int
somma 0 = 0
somma n = n + somma (n - 1)