create :: Int -> [Int]
create 0 = []
create n = create (n - 1) ++ [n]