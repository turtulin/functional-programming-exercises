polynomial :: [Float] -> Float -> Float
polynomial cs x = sum (map (\(y, z) -> y * z) (zip cs (map (x ^) [0..])))