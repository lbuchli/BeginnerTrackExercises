{-# LANGUAGE ScopedTypeVariables #-}

import Test.Hspec
import Test.QuickCheck

import System.Random (mkStdGen)

import Exercises

main :: IO ()
main = hspec $ do
  describe "probablyCommutative" $ do
    it "returns True on (+)" $ property $
        \i -> probablyCommutative (mkStdGen i) (+)
    it "returns False on (-)" $ property $
        \i -> not $ probablyCommutative (mkStdGen i) (-)
