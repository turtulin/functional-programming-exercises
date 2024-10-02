-- This file contains many exercises on higher order functions.

{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use sum" #-}
{-# HLINT ignore "Use product" #-}

somma :: Num a => [a] -> a
somma = foldr (+) 0

media :: [Int] -> Int
media xs = foldr (+) 0 ys `div` length ys
    where ys = filter even xs

prodotto :: (Num a, Eq a) => [a] -> a
prodotto = foldr (*) 1 . filter (/=0)

prodottoA :: (Num a, Eq a) => [a] -> a
prodottoA xs | any (/=0) xs = foldr (*) 1 (filter (/=0) xs)
             | otherwise = 0

modulo :: (Num a, Floating a) => [a] -> a
modulo = sqrt . foldr (+) 0 . map (^2)

lunghezza :: [a] -> Int
lunghezza = foldr (+) 0 . map (const 1)

ordinataC :: Ord a => [a] -> Bool
ordinataC xs = all (uncurry (<=)) (zip xs (tail xs))

ordinataD :: Ord a => [a] -> Bool
ordinataD xs = all (uncurry (>=)) (zip xs (tail xs))

maiOrdinata :: Ord a => [a] -> Bool
maiOrdinata xs = not (ordinataC xs || ordinataD xs)

duplicati :: Eq a => [a] -> Bool
duplicati xs = any duplicato xs
    where
        duplicato x = length (filter (==x) xs) > 1

concatena :: [a] -> [a] -> [a]
concatena = flip (foldr (:))

pariRicorsiva :: [a] -> [a]
pariRicorsiva [] = []
pariRicorsiva [x] = [x]
pariRicorsiva (x:_:xs) = [x] ++ pariRicorsiva xs

pariFunzioni :: [a] -> [a]
pariFunzioni xs = map fst (filter (\(a,b) -> even b) (zip xs [0..]))

inversioni :: Ord a => [a] -> Int
inversioni [] = 0
inversioni [_] = 0
inversioni (x:y:xs) | x > y = 1 + inversioni (y:xs)
                    | otherwise = inversioni (y:xs)

inversioniFunc :: Ord a => [a] -> Int
inversioniFunc xs = foldr ((+) . const 1) 0 (filter (uncurry (>)) (zip xs (tail xs)))

stringhe :: [String] -> String
stringhe [] = ""
stringhe [_] = ""
stringhe (x:y:xs) | length x == length y = x ++ stringhe (y:xs)
                  | otherwise = stringhe (y:xs)

stringheFunc :: [String] -> String
stringheFunc (x:xs) = concatMap fst (filter (\(x, y) -> length x == length y) (zip (x:xs) xs))

polynomial :: [Float] -> Float -> Float
polynomial cs x = sum (zipWith (*) cs (map (x ^) [0..]))