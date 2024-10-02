-- This is a linear time implementation of the Fibonacci function.

fibo :: Int -> Integer
fibo k = go 0 1 k
    where
        go a _ 0 = a
        go a b k = go b (a + b) (k - 1)