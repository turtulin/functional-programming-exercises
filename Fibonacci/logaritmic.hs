-- This is a logarithmic time complexity implementation of the Fibonacci sequence.

type Vector = (Integer, Integer)
type Matrix = (Vector, Vector)

dot :: Vector -> Vector -> Integer
dot (a, b) (c, d) = a * c + b * d

identity :: Matrix
identity = ((1, 0), (0, 1))

transpose :: Matrix -> Matrix
transpose ((a, b), (c, d)) = ((a, c), (b, d))

x :: Matrix -> Matrix -> Matrix
x (r1, r2) m = ((r1 `dot` c1, r1 `dot` c2), (r2 `dot` c1, r2 `dot` c2))
    where 
        (c1, c2) = transpose m

op :: Matrix -> Int -> Matrix
op _ 0 = identity
op m k | even k = a `x` a
 where
  a = m `op` (k `div` 2)
op m k = m `x` (m `op` (k - 1))

fibo :: Int -> Integer
fibo k = snd (fst (m `op` k))
 where
  m = ((1, 1), (1, 0))