{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE StandaloneDeriving #-}

import Test.Hspec
import Test.QuickCheck

import Data.Maybe (isNothing, isJust)

import Exercises
import Exercises (boardFromList)

deriving instance Eq Board

playFrom :: Side -> Maybe Side
playFrom side = play side (boardFromList (replicate 9 Nothing))

play side board | all isJust (boardToList board) && isNothing (winState board) = Nothing
                | otherwise = case winState board of
                        Just side -> Just side
                        Nothing -> play other_side (nextMove side board)
  where other_side = case side of
          Cross -> Circle
          Circle -> Cross

main :: IO ()
main = hspec $ do
  describe "primes" $
    it "does not share any factors (until 50th prime)" $
        or [p /= q && p `mod` q == 0 | p <- take 50 primes, q <- take 50 primes] `shouldBe` False
  describe "pFactors" $
    it "returns only one factor for primes (until 50th prime)" $
        all ((== 1) . length . pFactors) (take 50 primes) `shouldBe` True
  describe "winState" $ do
    it "returns Cross win for XXX ___ ___" $
        winState (boardFromList (replicate 3 (Just Cross) ++ replicate 6 Nothing)) `shouldBe` Just Cross
    it "returns Circle win for OOO ___ ___" $
        winState (boardFromList (replicate 3 (Just Circle) ++ replicate 6 Nothing)) `shouldBe` Just Circle
    it "returns Nothing for ___ ___ ___" $
        winState (boardFromList (replicate 9 Nothing)) `shouldBe` Nothing
  describe "nextMove" $ do
    it "chooses ___ ___ O_O -> ___ ___ OOO for circle" $ do
        nextMove Circle (boardFromList (replicate 6 Nothing ++ [Just Circle, Nothing, Just Circle]))
          `shouldBe` boardFromList (replicate 6 Nothing ++ replicate 3 (Just Circle))
    it "chooses ___ ___ X_X -> ___ ___ XXX for cross" $ do
        nextMove Cross (boardFromList (replicate 6 Nothing ++ [Just Cross, Nothing, Just Cross]))
          `shouldBe` boardFromList (replicate 6 Nothing ++ replicate 3 (Just Cross))
    it "ends in a draw when played, Cross starting" $
      playFrom Cross `shouldBe` Nothing
    it "ends in a draw when played, Circle starting" $
      playFrom Circle `shouldBe` Nothing
