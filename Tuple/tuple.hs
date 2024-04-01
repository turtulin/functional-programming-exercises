use :: (Int, Int) -> Int
use (m, n) = 2 * m + n

onlyHaskell :: (String, Int, Int) -> Int
onlyHaskell ("Haskell", x, y) = x + y
onlyHaskell (_ , x, y) = x * y

type Point = (Float, Float)
distance :: Point -> Point -> Float
distance (x1, y1) (x2, y2) = sqrt (dx ^ 2 + dy ^ 2)
 where
  dx = x1 - x2
  dy = y1 - y2