-- In an XY.hs file declare two strings a and b such that a is composed
-- the character X followed by b, while b is composed of the character Y
-- followed by a. Verify that a and b are declared correctly
-- using the take function as shown above.

a :: [Char]
a = 'X' : b
b :: [Char]
b = 'Y' : a

main :: IO ()
main = do
  print $ take 10 a
  print $ take 10 b
