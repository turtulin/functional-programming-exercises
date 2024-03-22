-- In a file 2048.hs of maximum size 155 bytes declare a
-- string s consisting of 2048 characters a. Apply the function
-- length a s to verify that the length of s is correct.

s :: [Char]
s = replicate 2048 'a'
main :: IO ()
main = print $ length s