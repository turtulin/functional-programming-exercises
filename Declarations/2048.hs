-- In a 2048.hs file of maximum size 155 bytes declare a
-- s string composed of 2048 characters a. Apply function
-- length to s to verify that the length of s is correct.

s :: [Char]
s = replicate 2048 'a'
main :: IO ()
main = print $ length s