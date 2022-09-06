module Main where

import StatLib
import Data.List

three :: [Float]
three = sort $ parseToList $ "57 61 57 57 58 57 61 54 68 51 49 64 50 48 " ++
                             "65 52 56 46 54 49 51 47 55 55 54 42 51 56 " ++
                             "55 51 54 51 60 62 43 55 56 61 52 69 64 46"

cls1 :: Int
cls1 = freqCls three 40 45

cls2 :: Int
cls2 = freqCls three 46 51

cls3 :: Int
cls3 = freqCls three 52 57

cls4 :: Int
cls4 = freqCls three 58 63

cls5 :: Int
cls5 = freqCls three 64 69

cls6 :: Int
cls6 = freqCls three 70 75

freqTable :: [((Int, Int), Int)]
freqTable = [((40,45), cls1), ((46,51), cls2), ((52,57), cls3),
             ((58,63), cls4), ((64,69), cls5), ((70,75), cls6)]

main :: IO ()
main = undefined