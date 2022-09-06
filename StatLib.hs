module StatLib 
( parseToList
, mean, median, mode, range, midrange
, popVariance, popStdDev
, variance, stdDev
, freqCls
) where

import Data.List
import qualified Text.PrettyPrint as PP

mean :: [Float] -> Float
mean xs = sum xs / fromIntegral (length xs)

median :: [Float] -> Float
median xs =
  let sorted = sort xs
      n = length sorted
      mid = n `div` 2
  in if even n
       then (sorted !! mid + sorted !! (mid - 1)) / 2
       else sorted !! mid

mode :: [Float] -> Maybe Float
mode xs =
  let counts = map (\x -> (x, length (filter (== x) xs))) xs
      maxCount = maximum (map snd counts)
  in if maxCount == 1
       then Nothing
       else Just (fst (head (filter ((== maxCount) . snd) counts)))

range :: [Float] -> Float
range xs = maximum xs - minimum xs

midrange :: [Float] -> Float
midrange xs = (minimum xs + maximum xs) / 2

popVariance :: [Float] -> Float
popVariance xs =
  let m = mean xs
  in sum (map (\x -> (x - m)^2) xs) / fromIntegral (length xs)

popStdDev :: [Float] -> Float
popStdDev xs = sqrt (variance xs)

variance :: [Float] -> Float
variance xs =
  let m = mean xs
  in sum (map (\x -> (x - m)^2) xs) / fromIntegral (length xs - 1)

stdDev :: [Float] -> Float
stdDev xs = sqrt (variance xs)

firstQuartile :: [Float] -> Float
firstQuartile xs = median (take (length xs `div` 2) xs)

thirdQuartile :: [Float] -> Float
thirdQuartile xs = median (drop (length xs `div` 2) xs)

zScore :: [Float] -> Float -> Float
zScore xs x = (x - mean xs) / stdDev xs


type Stem = Int
type Leaf = Int

toint :: Float -> Int
toint = floor

stem :: Int -> Int
stem x = x `div` 10

stems :: [Int] -> [Int]
stems xs = map stem xs

leaf :: Int -> Int
leaf x = x `mod` 10

leaves :: [Int] -> [Int]
leaves xs = map leaf xs

fleaf :: Float -> Int
fleaf x = floor (x * 10)

fleaves :: [Float] -> [Int]
fleaves xs = map fleaf xs

fstem :: Float -> Int
fstem x = stem $ toint x * 10

fstems :: [Float] -> [Int]
fstems xs = map fstem xs

stemplot :: [Int] -> [(Stem, [Leaf])]
stemplot xs = map (\x -> (x, leaves $ filter (\y -> stem y == x) xs)) (nub $ stems xs)

fstemplot :: [Float] -> [(Stem, [Leaf])]
fstemplot xs = map (\x -> (x, fleaves $ filter (\y -> fstem y == x) xs)) (nub $ fstems xs)

plot :: [(Stem, [Leaf])] -> IO ()
plot plt = putStrLn $ PP.render $ PP.vcat $ map (\(x, y) -> PP.text (show x) PP.<+> PP.text (show y)) plt

parseToList :: [Char] -> [Float]
parseToList = map read . words

-- get the count of values that fall between l and u in xs
freqCls :: [Float] -> Float -> Float -> Int
freqCls xs l u = length $ filter (\x -> x >= l && x <= u) xs

main :: IO ()
main = undefined