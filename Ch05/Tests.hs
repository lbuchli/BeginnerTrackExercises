{-# LANGUAGE ScopedTypeVariables #-}

import Test.Hspec
import Test.QuickCheck

import qualified Data.List

import Exercises

takeEveryReference n xs = [x | (x,i) <- zip xs [0..], i `mod` n == 0]

main :: IO ()
main = hspec $ do
  describe "myReplicate" $ do
    it "behaves like replicate" $ property $
      \n (x :: Double) -> n < 0 || (replicate n x == myReplicate n x)
  describe "runningSum" $ do
    it "makes a running sum" $ property $
      \(xs :: [Int]) -> runningSum xs == map (\n -> sum (take n xs)) [1..length xs]
  describe "takeEverySnd" $ do
    it "behaves like the reference implementation" $ property $
      \(xs :: [Int]) -> takeEverySnd xs == takeEveryReference 2 xs
  describe "takeEvery" $ do
    it "behaves like the reference implementation" $ property $
      \n (xs :: [Int]) -> n <= 0 || (takeEvery n xs == takeEveryReference n xs)
  describe "mergeSort" $ do
    it "behaves like Data.List.sort" $ property $
      \(xs :: [Int]) -> Data.List.sort xs == mergeSort xs
