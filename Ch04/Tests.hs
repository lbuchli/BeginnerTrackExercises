{-# LANGUAGE ScopedTypeVariables #-}

import Test.Hspec
import Test.QuickCheck

import Exercises

main :: IO ()
main = hspec $ do
  describe "andPat" $ do
    it "behaves like (&&)" $ property $ \x y -> andPat x y == (x && y)
  describe "andGuard" $ do
    it "behaves like (&&)" $ property $ \x y -> andGuard x y == (x && y)
  describe "andCase" $ do
    it "behaves like (&&)" $ property $ \x y -> andCase x y == (x && y)

  describe "pickIfPat" $ do
    it "behaves like 'Data.Bool.bool fst snd'" $ property $
      \x (p :: (Int, Int)) -> pickIfPat x p == (if x then fst else snd) p
  describe "pickIfGuard" $ do
    it "behaves like 'Data.Bool.bool fst snd'" $ property $
      \x (p :: (Int, Int)) -> pickIfGuard x p == (if x then fst else snd) p
  describe "pickIfCase" $ do
    it "behaves like 'Data.Bool.bool fst snd'" $ property $
      \x (p :: (Int, Int)) -> pickIfCase x p == (if x then fst else snd) p
