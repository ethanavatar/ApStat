module Main where

import Data.List
import Text.PrettyPrint

type Stem = Int
type Leaf = Int

nums :: [Int]
nums = sort [ 12, 32, 65, 61, 82, 66,  3, 64, 52
       , 84, 10, 75, 37, 77, 65, 56, 68, 10
       , 47, 42, 72, 49, 55, 48, 32, 44, 32 ]

stem :: Int -> Int
stem x = x `div` 10

leaf :: Int -> Int
leaf x = x `mod` 10

stems :: [Int] -> [Int]
stems xs = map stem xs

leaves :: [Int] -> [Int]
leaves xs = map leaf xs

stemplot :: [Int] -> [(Stem, [Leaf])]
stemplot xs = map (\x -> (x, leaves $ filter (\y -> stem y == x) xs)) (nub $ stems xs)

plot :: [(Stem, [Leaf])] -> IO ()
plot plt = putStrLn $ render $ vcat $ map (\(x, y) -> text (show x) <+> text (show y)) plt

main :: IO ()
main = undefined