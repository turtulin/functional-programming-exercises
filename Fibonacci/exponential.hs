fibo :: Int -> Integer
fibo 0 = 0
fibo 1 = 1
fibo k = fibo (k - 1) + fibo (k - 2)