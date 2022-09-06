module Main where

import StatLib

-- Finding measures of central tendency. In exercises 1-4 find the (a) mean, (b) median, (c) mode, and (d) midrange of the following data sets:

-- 1.
_one :: [Float]
_one = map fromIntegral [27, 8, 17, 11, 15, 25, 16, 14, 14, 14, 13, 18]

oneA :: Float
oneA = mean _one

oneB :: Float
oneB = median _one

oneC :: Maybe Float
oneC = mode _one

oneD :: Float
oneD = midrange _one

-- 2.
_two :: [Float]
_two = map fromIntegral [67, 66, 59, 62, 63, 66, 66, 55]

twoA :: Float
twoA = mean _two

twoB :: Float
twoB = median _two

twoC :: Maybe Float
twoC = mode _two

twoD :: Float
twoD = midrange _two

-- 3.
_three :: [Float]
_three = map fromIntegral [88, 107, 35, 93, 65, 55, 119, 83, 99, 74, 46, 108]

threeA :: Float
threeA = mean _three

threeB :: Float
threeB = median _three

threeC :: Maybe Float
threeC = mode _three

threeD :: Float
threeD = midrange _three

-- 4.
_four :: [Float]
_four = map fromIntegral [ 17, 20, 21, 18, 20, 20, 20, 18, 19, 19
                         , 20, 19, 21, 20, 18, 20, 20, 19, 18, 19]
fourA :: Float
fourA = mean _four

fourB :: Float
fourB = median _four

fourC :: Maybe Float
fourC = mode _four

fourD :: Float
fourD = midrange _four

main :: IO ()
main = undefined