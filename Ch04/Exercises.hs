-- Chapter 04: Syntax in Functions
module Exercises where

{-|
Exercise: Implement the following two functions using:
(1) Pattern matching
(2) Guards
(3) A 'case' Expression
|-}


-- The functions 'and*' should evaluate to the following:
-- and True True -> True
-- and False True -> False
-- and True False -> False
-- and False False -> False

andPat :: Bool -> Bool -> Bool
andPat True True  = True
andPat _ _  = False

andGuard :: Bool -> Bool -> Bool
andGuard x y | x = y
             | otherwise = False

andCase :: Bool -> Bool -> Bool
andCase x y = case x of
  True -> y
  False -> False

-- The functions 'pickIf*' should evaluate to the following:
-- pickIf True (x, y) -> x
-- pickIf False (x, y) -> y

pickIfPat :: Bool -> (a, a) -> a
pickIfPat True (x, y) = x
pickIfPat False (x, y) = y

pickIfGuard :: Bool -> (a, a) -> a
pickIfGuard p (x, y) | p = x
                     | otherwise = y

pickIfCase :: Bool -> (a, a) -> a
pickIfCase p (x, y) = case p of
  True -> x
  False -> y
