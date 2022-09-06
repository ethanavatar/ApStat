module Main where

import StatLib
import Data.List

meanOfFreqTable :: [((Float, Float), Float)] -> Float
-- sum fx / f
meanOfFreqTable table = sumFx / sumF
    where freqs = map (\(x, f) -> f) table
          fx = map (\(x, f) -> fst x * f) table
          sumFx = sum fx
          sumF = sum freqs

nine :: [((Float, Float), Float)]
nine = [ ((40, 49), 8)
       , ((50, 59), 44)
       , ((60, 69), 23)
       , ((70, 79), 6)
       , ((80, 89), 107)
       , ((90, 99), 11)
       , ((100, 109), 1)]

nineAns :: Float
nineAns = meanOfFreqTable nine

eleven :: [((Float, Float), Float)]
eleven = [ ((42, 45), 25)
         , ((46, 49), 14)
         , ((50, 53), 7)
         , ((54, 57), 3)
         , ((58, 61), 1)]

elevenAns :: Float
elevenAns = meanOfFreqTable eleven

main :: IO ()
main = undefined