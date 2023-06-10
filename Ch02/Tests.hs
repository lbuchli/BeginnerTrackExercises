{-# LANGUAGE ScopedTypeVariables #-}

import Test.Hspec

import Exercises

main :: IO ()
main = hspec $ do
  describe "evenSquares" $
    it "is equal to the solution" $
        evenSquares == [x^2 | x <- [2..100], even x]
