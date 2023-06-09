{-# LANGUAGE ScopedTypeVariables #-}

import Test.Hspec
import Test.QuickCheck

import Exercises

main :: IO ()
main = hspec $ do
  describe "length" $ do
    it "behaves like Prelude.length" $ property $
      \(xs :: [()]) -> Exercises.length xs == Prelude.length xs
  describe "myFilter" $ do
    it "behaves like filter" $ property $
      \(xs :: [Int]) -> and [myFilter p xs == filter p xs | p <- intPredicates]
  describe "mapIf" $ do
    it "can be used to make all numbers even" $ property $
      \(xs :: [Int]) -> all even $ mapIf odd (*2) xs
    it "can be used to make all numbers odd" $  property $
      \(xs :: [Int]) -> all odd $ mapIf even (1-) xs
  describe "stretch" $ do
    it "turns [1,2,3] into [1,1,2,2,3,3]" $ stretch [1,2,3] `shouldBe` [1,1,2,2,3,3]
    it "doubles the length" $ property $
      \(xs :: [()]) -> Prelude.length (stretch xs) == 2 * Prelude.length xs

intPredicates = [even, odd, (>0), (<5)]
