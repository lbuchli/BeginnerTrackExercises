{-# LANGUAGE ScopedTypeVariables #-}

import Test.Hspec
import Test.QuickCheck

import Data.Map (Map)
import qualified Data.Map as Map
import Data.Set (Set)
import qualified Data.Set as Set

import Data.List (union, sort)

import Exercises

main :: IO ()
main = hspec $ do
  describe "wordCount" $
    it "behaves like reference implementation" $ property $
        \s -> wordCount s == (length . words) s
  describe "keySet" $
    it "behaves like reference implementation" $ property $
        \(m :: Map Int String) -> keySet m == (Set.fromList . Map.keys) m
  describe "union1" $
    it "behaves like 'union'" $ property $
        -- we don't care about order
        \(xs :: [Bool]) (ys :: [Bool]) -> sort (union1 xs ys) == sort (union xs ys)
  describe "union2" $
    it "behaves like 'union'" $ property $
        -- we don't care about order
        \(xs :: [Bool]) (ys :: [Bool]) -> sort (union2 xs ys) == sort (union xs ys)
