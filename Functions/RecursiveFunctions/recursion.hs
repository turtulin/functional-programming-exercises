-- In these exercises we assume that inputs are non-negatives

fibonacci :: Int -> Int
fibonacci k | k == 0 = 0
            | k == 1 = 1
            | otherwise = fibonacci (k - 1) + fibonacci (k - 2)

powN :: Int -> Int
powN n | n == 0 = 1
       | n > 0  = 2 * powN (n - 1)

altPowN :: Int -> Int -> Int
altPowN _ 0 = 1
altPowN b n = b * altPowN b (n - 1)

altPowN1 :: Int -> Int -> Int
altPowN1 _ 0 = 1
altPowN1 b n | even n = a * a 
 where a = altPowN1 b (n `div` 2)
altPowN1 b n = b * altPowN1 b (n - 1)
 

bits :: Int -> Int
bits n | n == 0 = 0
       | even n = bits (n `div` 2)
       | otherwise = 1 + bits (n `div` 2)

altBits :: Int -> Int
altBits 0 = 0
altBits n = (n `mod` 2) + bits (n `div` 2)

-- Alternative syntax 
somma :: Int -> Int
somma 0 = 0
somma n = n + somma (n - 1)

powOf2 :: Int -> Bool
powOf2 n | n == 0 = False
         | n == 1 = True
         | even n = powOf2 (n `div` 2)
         | otherwise = False

myGcd :: Int -> Int -> Int
myGcd m 0 = m
myGcd m n = myGcd n (m `mod` n)