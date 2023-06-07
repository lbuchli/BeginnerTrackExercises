-- Chapter 04: Syntax in Functions
module Exercises where

{-|
Exercise: Implement the following two functions using:
(1) Pattern matching
(2) Guards
(3) A 'case' Expression

TODO check implementations
|-}


-- The functions 'and*' should evaluate to the following:
-- and True True -> True
-- and False True -> False
-- and True False -> False
-- and False False -> False

andPat :: Bool -> Bool -> Bool
andPat _ _  = _
andPat _ _  = _

andGuard :: Bool -> Bool -> Bool
andGuard _ _ | _ = _
             | _ = _

andCase :: Bool -> Bool -> Bool
andCase _ _ = case _ of
  _
  _

-- The functions 'pickIf*' should evaluate to the following:
-- pickIf True (x, y) -> x
-- pickIf False (x, y) -> y

pickIfPat :: Bool -> (a, a) -> a
pickIfPat _ _ = _
pickIfPat _ _ = _

pickIfGuard :: Bool -> (a, a) -> a
pickIfGuard _ _ | _ = _
                | _ = _

pickIfCase :: Bool -> (a, a) -> a
pickIfCase _ _ = case _ of
  _
  _
