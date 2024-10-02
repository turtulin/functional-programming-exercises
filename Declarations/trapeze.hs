-- In a trapeze.hs file declare minBase, majBase,
-- height, perimeter and area of a rectangle trapezoid, expressing
-- perimeter and area according to the other quantities fixed as desired.

minBase :: Float
minBase = 3.0

majBase :: Float
majBase = 5.0 

height :: Float
height = 4.0

area :: Float
area =  (minBase + majBase) / 2 * height

perimeter :: Float
perimeter = minBase + majBase + 2 * sqrt (height ** 2 + ((majBase - minBase) / 2) ** 2)