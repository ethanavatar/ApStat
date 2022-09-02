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

buildOccurance :: Int -> [Char]
buildOccurance n = replicate n '*' ++ " " ++ show n

plot :: [(Key, Occurences)] -> IO ()
plot plt = putStrLn $ render $ vcat $ map (\(x,y) -> text (show x) <+> text (show $ buildOccurance y)) plt


inp2 :: [Float]
inp2 = [ 17, 28, 27, 14, 18, 34, 16, 42
       , 28, 24, 20, 23, 31, 37, 21, 30
       , 25, 17, 28, 33, 25, 23, 19, 18, 29 ]

xs :: [Float]
xs = [ 57, 61, 57, 57, 58, 57, 61, 54, 68, 51, 49, 64, 50, 48
     , 65, 52, 56, 46, 54, 49, 51, 47, 55, 55, 54 ,42, 51, 56
     , 55, 51, 54, 51, 60, 62, 43, 55, 56, 61, 52, 69, 64, 46 ]

ans :: IO ()
ans = plot $ dotplot $ sort xs


ans2 :: IO()
ans2 = plot $ dotplot $ sort inp2

main :: IO ()
main = undefined