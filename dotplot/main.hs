module Main where

import Data.List
import Text.PrettyPrint

inp :: [Float]
inp = [ 8.25, 7.83, 8.30,  8.42, 8.5, 8.67, 8.17
      , 9.00, 9.00, 8.17, 7.92, 9.00, 8.50, 9.00
      , 7.75, 7.92, 8.00, 8.08, 8.42, 8.75, 8.08
      , 9.75, 8.33, 7.83, 7.92, 8.58, 7.83, 8.42
      , 7.75, 7.42, 6.75, 7.42, 8.50, 8.67, 10.17
      , 8.75, 8.58, 8.67, 9.17, 9.08, 8.83, 8.67]

type Key = Float
type Occurences = Int

count :: Eq a => a -> [a] -> Int
count elem elements = length $ filter (==elem) elements

keys :: [Float] -> [Key]
keys xs = nub xs

dotplot :: [Float] -> [(Key, Occurences)]
dotplot xs = map (\x -> (x, count x xs)) $ keys xs

plotOccurance :: Int -> [Char]
plotOccurance n = replicate n '*'

plot :: [(Key, Occurences)] -> IO ()
plot plt = putStrLn $ render $ vcat $ map (\(x,y) -> text (show x) <+> text (show $ plotOccurance y)) plt

main :: IO ()
main = undefined