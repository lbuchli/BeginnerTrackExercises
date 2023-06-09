{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE StandaloneDeriving #-}
{-# LANGUAGE DeriveGeneric #-}

import Test.Hspec
import Test.QuickCheck
import Generic.Random

import GHC.Generics

import Exercises

-- we don't have the constructor names, so we go via generic
deriving instance Generic Nat

instance Arbitrary Nat where
  arbitrary = genericArbitrary (1 % 1 % ())

deriving instance Show Nat

main :: IO ()
main = hspec $ do
  describe "plus" $
    it "is commutative" $ property $
        \x y -> plus x y == plus y x
