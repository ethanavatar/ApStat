module Main where

import StatLib 
import Data.List

one :: [Float]
one = sort [27, 8, 17, 11, 15, 25, 16, 14, 14, 14, 13, 18]

oneA :: Float
oneA = range one

oneB :: Float
oneB = variance one

oneC :: Float
oneC = stdDev one

-- 
three :: [Float]
three = sort [88, 107, 35, 93, 65, 55, 119, 83, 99, 74, 46, 108]

threeA :: Float
threeA = range three

threeB :: Float
threeB = variance three

threeC :: Float
threeC = stdDev three


--
five :: [Float]
five = sort [6.5, 6.6, 6.7, 6.8, 7.1, 7.3, 7.4, 7.7, 7.7, 7.7]

fiveOne :: [Float]
fiveOne = sort [4.2, 5.4, 5.8, 6.2, 6.7, 7.7, 7.7, 8.5, 9.3, 10]

fiveA :: Float
fiveA = range five

fiveB :: Float
fiveB = variance five

fiveC :: Float
fiveC = stdDev five

fiveOneA :: Float
fiveOneA = range fiveOne

fiveOneB :: Float
fiveOneB = variance fiveOne

fiveOneC :: Float
fiveOneC = stdDev fiveOne

--
seven :: [Float]
seven = sort [0.8192, 0.8150, 0.8163, 0.8211, 0.8181, 0.8247]

sevenOne :: [Float]
sevenOne = sort [0.8258, 0.8156, 0.8211, 0.8170, 0.8216, 0.8302]

sevenA :: Float
sevenA = range seven

sevenB :: Float
sevenB = variance seven

sevenC :: Float
sevenC = stdDev seven

sevenOneA :: Float
sevenOneA = range sevenOne

sevenOneB :: Float
sevenOneB = variance sevenOne

sevenOneC :: Float
sevenOneC = stdDev sevenOne

main :: IO ()
main = undefined