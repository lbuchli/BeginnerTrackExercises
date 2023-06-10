{-# LANGUAGE ScopedTypeVariables #-}

import Test.Hspec
import Test.QuickCheck

import Exercises

main :: IO ()
main = hspec $ do
  describe "probablyCommutative" $
    it "returns True on (+)" $ property $
        \g -> probablyCommutative g (+)
    it "returns False on (-)" $ property $
        \g -> probablyCommutative g (-)
