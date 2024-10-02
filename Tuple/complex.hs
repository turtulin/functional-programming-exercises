-- In this file we define a few functions that work with complex numbers.

type Complex = (Double, Double)

add :: (Complex, Complex) -> Complex
add ((x1, y1), (x2, y2)) = (x1 + x2, y1 + y2)

myNegate :: Complex -> Complex
myNegate (x, y) = (negate x, y)

myNegate1 :: Complex -> Complex
myNegate1 (x, y) = (-x, y)

myConjugate :: Complex -> Complex
myConjugate (x, y) = (x, negate y)

myConjugate1 :: Complex -> Complex
myConjugate1 (x, y) = (x, -y)

subtract :: (Complex, Complex) -> Complex
subtract (x, y) = add (x, myNegate y)

myModule :: Complex -> Double
myModule (x, y) = sqrt (x ^ 2 + y ^ 2)