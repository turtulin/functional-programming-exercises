area1 :: Float -> Float
-- One can also use (*) 6 3 instead of 6 * 3
-- ** works on floating point variables
area1 r = pi * r ** 2

area2 :: Float -> Float -> Float
-- n / m        floating result
-- n `div` m    integer result
-- div n m      integer result
area2 b h = b * h / 2

area3 :: Float -> Float -> Float -> Float
area3 a b h = (a + b) / 2 * h

area4 :: Float -> Float
area4 p = p ** 2 / (4 * pi)