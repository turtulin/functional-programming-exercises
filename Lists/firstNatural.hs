inefficient :: Int -> [Int]
inefficient 0 = []
inefficient n = inefficient (n - 1) ++ [n]

infinite :: Int -> [Int]
infinite n = take n (from 1)
 where
    from x = x : from (x + 1)