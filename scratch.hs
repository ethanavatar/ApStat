module Main where

import StatLib
import Data.List

data Cond a = a :? a

infixl 0 ?
infixl 1 :?

(?) :: Bool -> Cond a -> a
True  ? (x :? _) = x
False ? (_ :? y) = y



sixtyfour :: [Float]
-- [5.5,5.61,4.88,5.07,5.26,5.55,5.36,5.29,5.58,5.65,5.57,5.53,5.62,5.29,5.44,5.34,5.79,5.1,5.27,5.39,5.42,5.47,5.63,5.34,5.46,5.3,5.75,5.68,5.85]
sixtyfour = parseToList "5.50 5.61 4.88 5.07 5.26 5.55 5.36 5.29 5.58 5.65 5.57 5.53 5.62 5.29 5.44 5.34 5.79 5.10 5.27 5.39 5.42 5.47 5.63 5.34 5.46 5.30 5.75 5.68 5.85"


-----------------------------

one :: [Float]
one = [ 67, 66, 59, 62, 63, 66, 66, 55, 63, 61, 60, 56, 66, 67, 59, 59, 60, 62, 61, 63, 62, 57
      , 63, 60, 64, 65, 63, 64, 59, 60, 60, 60, 56, 66, 62, 60, 62, 56, 60, 60, 58, 52, 54 ]

above :: [Maybe Float]
above = map (\x -> x > 59 ? Just x :? Nothing) one


main :: IO ()
main = undefined