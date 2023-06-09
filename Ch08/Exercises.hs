-- Chapter 08: Making Our Own Types and Typeclasses
module Exercises where

{-|
Exercise: Peano defined natural numbers by means of 0 and successors of it.
Define a data type that represents this idea using a constructor for zero and
one for the successor of a number.
|-}

data Nat = Z | S Nat

{-|
Exercise: Define 'plus', which acts recursively on two natural numbers and
returns their sum.
|-}

plus :: Nat -> Nat -> Nat
plus Z m = m
plus (S n) m = S (plus n m)


{-|
Exercise: Define an Eq instance for your Peano numbers.
|-}

instance Eq Nat where
  S n == S m = n == m
  Z == Z = True
  _ == _ = False

{-|
Exercise: Define a class that allows casting to and from Int. Your functions
should also make it possible to mark a cast as impossible (for example when
casting a negative integer to a natural number). Make an instance for your
natural number type.
|-}

class CastInt a where
  toInt :: a -> Maybe Int
  fromInt :: Int -> Maybe a

instance CastInt Nat where
  toInt (S n) = case toInt n of
    Nothing -> Nothing
    Just n' -> Just (1 + n')
  toInt Z = Just 0

  fromInt n | n > 0 = case fromInt (n-1) of
                Nothing -> Nothing
                Just n' -> Just (S n')
  fromInt 0 = Just Z
  fromInt _ = Nothing
